// Copyright (c) 2015 The WebRTC project authors. All Rights Reserved.
//
// Use of this source code is governed by a BSD-style license
// that can be found in the LICENSE file in the root of the source
// tree. An additional intellectual property rights grant can be found
// in the file PATENTS.  All contributing project authors may
// be found in the AUTHORS file in the root of the source tree.

#include "webrtc/build/WinRT_gyp/Api/MediaSourceHelper.h"
#include <mfapi.h>
#include <ppltasks.h>
#include <mfidl.h>
#include "talk/media/base/videoframe.h"
#include "talk/app/webrtc/videosourceinterface.h"
#include "libyuv/convert.h"
#include "webrtc/system_wrappers/include/critical_section_wrapper.h"

using Microsoft::WRL::ComPtr;
using Platform::Collections::Vector;
using Windows::Media::Core::VideoStreamDescriptor;
using Windows::Media::Core::MediaStreamSourceSampleRequestedEventArgs;
using Windows::Media::Core::MediaStreamSourceSampleRequest;
using Windows::Media::Core::MediaStreamSourceStartingEventArgs;
using Windows::Media::Core::MediaStreamSource;
using Windows::Media::MediaProperties::VideoEncodingProperties;
using Windows::Media::MediaProperties::MediaEncodingSubtypes;
using Windows::System::Threading::TimerElapsedHandler;
using Windows::System::Threading::ThreadPoolTimer;

namespace webrtc_winrt_api_internal {

// Helper functions defined below.
bool IsSampleIDR(IMFSample* sample);
bool DropFramesToIDR(std::list<cricket::VideoFrame*>& frames);


SampleData::SampleData()
  : sizeHasChanged(false)
  , size({-1, -1})
  , rotationHasChanged(false)
  , rotation(-1) {
}

MediaSourceHelper::MediaSourceHelper(bool isH264,
  std::function<ComPtr<IMFSample>(cricket::VideoFrame*)> mkSample,
  std::function<void(int)> fpsCallback)
  : _mkSample(mkSample)
  , _fpsCallback(fpsCallback)
  , _isFirstFrame(true)
  , _futureOffsetMs(150)
  , _lastSampleTime(0)
  , _lastSize({0, 0})
  , _lastRotation(-1)
  , _isH264(isH264)
  , _frameCounter(0)
  , _lastTimeFPSCalculated(webrtc::TickTime::Now())
  , _lock(webrtc::CriticalSectionWrapper::CreateCriticalSection()) {

}
MediaSourceHelper::~MediaSourceHelper() {
  webrtc::CriticalSectionScoped csLock(_lock.get());
  // Clear the buffered frames.
  while (!_frames.empty()) {
    rtc::scoped_ptr<cricket::VideoFrame> frame(_frames.front());
    _frames.pop_front();
  }
}

void MediaSourceHelper::SetStartTimeNow() {
  webrtc::CriticalSectionScoped csLock(_lock.get());
  _startTime = webrtc::TickTime::Now();
}

void MediaSourceHelper::QueueFrame(cricket::VideoFrame* frame) {
  webrtc::CriticalSectionScoped csLock(_lock.get());

  if (_isH264) {
    // For H264 we keep all frames since they are encoded.
    _frames.push_back(frame);
  }
  else {
    // For I420 frame, keep only the latest.
    for (auto oldFrame : _frames) {
      delete oldFrame;
    }
    _frames.clear();
    _frames.push_back(frame);
  }
}

rtc::scoped_ptr<SampleData> MediaSourceHelper::DequeueFrame() {
  webrtc::CriticalSectionScoped csLock(_lock.get());

  if (_frames.size() == 0) {
    return nullptr;
  }

  rtc::scoped_ptr<SampleData> data;
  if (_isH264) {
    data = DequeueH264Frame();
  }
  else {
    data = DequeueI420Frame();
  }

  // Set the duration property
  LONGLONG duration = (LONGLONG)((1.0 / 30) * 1000 * 1000 * 10);
  data->sample->SetSampleDuration(duration);

  // Set the timestamp property
  if (_isFirstFrame) {
    _isFirstFrame = false;
    data->sample->SetSampleTime(0);
  }
  else {
    LONGLONG frameTime = GetNextSampleTimeHns();
    OutputDebugString((L"frameTime: " + frameTime + L"\n")->Data());
    data->sample->SetSampleTime(frameTime);
  }

  UpdateFrameRate();

  return data;
}

bool MediaSourceHelper::HasFrames() {
  webrtc::CriticalSectionScoped csLock(_lock.get());
  return _frames.size() > 0;
}

// === Private functions below ===

rtc::scoped_ptr<SampleData> MediaSourceHelper::DequeueH264Frame() {
  OutputDebugString((L"Queue:" + (_frames.size().ToString()) + L"\n")->Data());
  if (_frames.size() > 30) {
    OutputDebugString(L"Frame queue > 30, scanning ahead for IDR.\n");
    LOG(LS_INFO) << "Frame queue > 30, scanning ahead for IDR: "
      << _frames.size();
    DropFramesToIDR(_frames);
  }

  rtc::scoped_ptr<cricket::VideoFrame> frame(_frames.front());
  _frames.pop_front();

  rtc::scoped_ptr<SampleData> data(new SampleData);

  // Get the IMFSample in the frame.
  {
    IMFSample* tmp = (IMFSample*)frame->GetNativeHandle();
    if (tmp != nullptr) {
      tmp->AddRef();
      data->sample.Attach(tmp);
    }
  }

  if (IsSampleIDR(data->sample.Get())) {
    ComPtr<IMFAttributes> sampleAttributes;
    data->sample.As(&sampleAttributes);
    sampleAttributes->SetUINT32(MFSampleExtension_CleanPoint, TRUE);
    // TODO(winrt): Can this help in any way?
    // sampleAttributes->SetUINT32(MFSampleExtension_Discontinuity, TRUE);
  }

  CheckForAttributeChanges(frame.get(), data.get());
  return data;
}

rtc::scoped_ptr<SampleData> MediaSourceHelper::DequeueI420Frame() {
  rtc::scoped_ptr<cricket::VideoFrame> frame(_frames.front());
  _frames.pop_front();

  rtc::scoped_ptr<SampleData> data(new SampleData);

  data->sample = _mkSample(frame.get());

  ComPtr<IMFAttributes> sampleAttributes;
  data->sample.As(&sampleAttributes);
  sampleAttributes->SetUINT32(MFSampleExtension_CleanPoint, TRUE);
  sampleAttributes->SetUINT32(MFSampleExtension_Discontinuity, TRUE);

  CheckForAttributeChanges(frame.get(), data.get());
  return data;
}

// Guid to cache the IDR check result in the sample attributes.
const GUID GUID_IS_IDR = { 0x588e319a, 0x218c, 0x4d0d,{ 0x99, 0x6e, 0x77, 0x96, 0xb1, 0x46, 0x3e, 0x7e } };

bool IsSampleIDR(IMFSample* sample) {
  ComPtr<IMFAttributes> sampleAttributes;
  sample->QueryInterface<IMFAttributes>(&sampleAttributes);

  UINT32 isIdr;
  if (SUCCEEDED(sampleAttributes->GetUINT32(GUID_IS_IDR, &isIdr))) {
    return isIdr > 0;
  }

  ComPtr<IMFMediaBuffer> pBuffer;
  sample->GetBufferByIndex(0, &pBuffer);
  BYTE* pBytes;
  DWORD maxLength, curLength;
  if (FAILED(pBuffer->Lock(&pBytes, &maxLength, &curLength))) {
    return false;
  }

  // Search for the beginnings of nal units.
  for (DWORD i = 0; i < curLength - 5; ++i) {
    BYTE* ptr = pBytes + i;
    int prefixLengthFound = 0;
    if (ptr[0] == 0x00 && ptr[1] == 0x00 && ptr[2] == 0x00 && ptr[3] == 0x01) {
      prefixLengthFound = 4;
    }
    else if (ptr[0] == 0x00 && ptr[1] == 0x00 && ptr[2] == 0x01) {
      prefixLengthFound = 3;
    }

    if (prefixLengthFound > 0 && (ptr[prefixLengthFound] & 0x1f) == 0x05) {
      // Found IDR NAL unit
      pBuffer->Unlock();
      sampleAttributes->SetUINT32(GUID_IS_IDR, 1);  // Cache result
      return true;
    }
  }
  pBuffer->Unlock();
  sampleAttributes->SetUINT32(GUID_IS_IDR, 0);  // Cache result
  return false;
}

bool DropFramesToIDR(std::list<cricket::VideoFrame*>& frames) {
  cricket::VideoFrame* idrFrame = nullptr;
  // Go through the frames in reverse order (from newest to oldest) and look
  // for an IDR frame.
  for (auto it = frames.rbegin(); it != frames.rend(); ++it) {
    IMFSample* pSample = (IMFSample*)(*it)->GetNativeHandle();
    if (pSample == nullptr) {
      continue;  // I don't expect this will ever happen.
    }

    if (IsSampleIDR(pSample)) {
      idrFrame = *it;
      break;
    }
  }

  // If we have an IDR frame, drop all older frames.
  if (idrFrame != nullptr) {
    OutputDebugString(L"IDR found, dropping all other samples.\n");
    while (!frames.empty()) {
      if (frames.front() == idrFrame) {
        break;
      }
      auto frame = frames.front();
      frames.pop_front();
      delete frame;
    }
  }
  return idrFrame != nullptr;
}

LONGLONG MediaSourceHelper::GetNextSampleTimeHns() {

  if (_isH264) {
    webrtc::TickTime now = webrtc::TickTime::Now();
    LONGLONG frameTime = ((now - _startTime).Milliseconds() + _futureOffsetMs) * 1000 * 10;

    // Sometimes we get requests so fast they have identical timestamp.
    // Add a bit to the timetamp so it's different from the last sample.
    if (_lastSampleTime >= frameTime) {
      LOG(LS_WARNING) << "!!!!! Bad sample time "
        << _lastSampleTime << "->" << frameTime;
      frameTime = _lastSampleTime + 500;  // Make the timestamp slightly after the last one.
    }

    _lastSampleTime = frameTime;

    return frameTime;
  }
  else {
    // Non-encoded samples seem to work best with a zero timestamp.
    return 0;
  }
}

void MediaSourceHelper::CheckForAttributeChanges(cricket::VideoFrame* frame, SampleData* data) {
  SIZE currentSize = { frame->GetWidth(), frame->GetHeight() };
  if (_lastSize.cx != currentSize.cx || _lastSize.cy != currentSize.cy) {
    data->sizeHasChanged = true;
    data->size = currentSize;
    _lastSize = currentSize;
  }

  // Update rotation property
  int currentRotation = frame->GetRotation();

  // If the rotation has changed
  if (_lastRotation == -1 || _lastRotation != currentRotation) {
    data->rotationHasChanged = true;
    data->rotation = currentRotation;
    _lastRotation = currentRotation;
  }

}

  // Called whenever a new sample is sent for rendering.
void MediaSourceHelper::UpdateFrameRate() {
  // Do FPS calculation and notification.
  _frameCounter++;
  // If we have about a second worth of frames
  webrtc::TickTime now = webrtc::TickTime::Now();
  if ((now - _lastTimeFPSCalculated).Milliseconds() > 1000) {
    _fpsCallback(_frameCounter);
    _frameCounter = 0;
    _lastTimeFPSCalculated = now;
  }
}

}  // namespace webrtc_winrt_api_internal

