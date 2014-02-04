# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := iLBC
DEFS_Debug := \
	'-DWEBRTC_SVNREVISION="Unavailable(issue687)"' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DUSE_LINUX_BREAKPAD' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_PEPPER_THREADING' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DUSE_SKIA=1' \
	'-DWEBRTC_LOGGING' \
	'-DWEBRTC_ARCH_ARM' \
	'-DWEBRTC_ARCH_ARM_V7' \
	'-DWEBRTC_DETECT_ARM_NEON' \
	'-DWEBRTC_LINUX' \
	'-DWEBRTC_ANDROID' \
	'-DWEBRTC_CLOCK_TYPE_REALTIME' \
	'-DWEBRTC_THREAD_RR' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DHAVE_SYS_UIO_H' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := -I$(ANDROID_NDK_PATH)/sources/cxx-stl/gnu-libstdc++/4.4.3/libs/armeabi/include \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wextra \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fno-builtin-cos \
	-fno-builtin-sin \
	-fno-builtin-cosf \
	-fno-builtin-sinf \
	-mthumb \
	-march=armv7-a \
	-mtune=cortex-a8 \
	-mfloat-abi=softfp \
	-mfpu=vfpv3-d16 \
	-fno-tree-sra \
	-fuse-ld=gold \
	-Wno-psabi \
	-mthumb-interwork \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	--sysroot=$(ANDROID_NDK_PATH)/platforms/android-9/arch-arm \
	-I. \
	-I$(ANDROID_NDK_PATH)/sources/cxx-stl/gnu-libstdc++/4.4.3/include \
	-Os \
	-g \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Woverloaded-virtual \
	-Wno-abi

INCS_Debug := \
	-Iwebrtc \
	-I. \
	-I. \
	-Iwebrtc/modules/audio_coding/codecs/ilbc/interface \
	-Iwebrtc/common_audio/signal_processing/include

DEFS_Release := \
	'-DWEBRTC_SVNREVISION="Unavailable(issue687)"' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DUSE_LINUX_BREAKPAD' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_PEPPER_THREADING' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DUSE_SKIA=1' \
	'-DWEBRTC_LOGGING' \
	'-DWEBRTC_ARCH_ARM' \
	'-DWEBRTC_ARCH_ARM_V7' \
	'-DWEBRTC_DETECT_ARM_NEON' \
	'-DWEBRTC_LINUX' \
	'-DWEBRTC_ANDROID' \
	'-DWEBRTC_CLOCK_TYPE_REALTIME' \
	'-DWEBRTC_THREAD_RR' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DHAVE_SYS_UIO_H' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0' \
	'-D_FORTIFY_SOURCE=2'

# Flags passed to all source files.
CFLAGS_Release := -I$(ANDROID_NDK_PATH)/sources/cxx-stl/gnu-libstdc++/4.4.3/libs/armeabi/include \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wextra \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fno-builtin-cos \
	-fno-builtin-sin \
	-fno-builtin-cosf \
	-fno-builtin-sinf \
	-mthumb \
	-march=armv7-a \
	-mtune=cortex-a8 \
	-mfloat-abi=softfp \
	-mfpu=vfpv3-d16 \
	-fno-tree-sra \
	-fuse-ld=gold \
	-Wno-psabi \
	-mthumb-interwork \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	--sysroot=$(ANDROID_NDK_PATH)/platforms/android-9/arch-arm \
	-I. \
	-I$(ANDROID_NDK_PATH)/sources/cxx-stl/gnu-libstdc++/4.4.3/include \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Woverloaded-virtual \
	-Wno-abi

INCS_Release := \
	-Iwebrtc \
	-I. \
	-I. \
	-Iwebrtc/modules/audio_coding/codecs/ilbc/interface \
	-Iwebrtc/common_audio/signal_processing/include

OBJS := \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/abs_quant.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/abs_quant_loop.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/augmented_cb_corr.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/bw_expand.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/cb_construct.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/cb_mem_energy.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/cb_mem_energy_augmentation.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/cb_mem_energy_calc.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/cb_search.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/cb_search_core.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/cb_update_best_index.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/chebyshev.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/comp_corr.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/constants.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/create_augmented_vec.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/decode.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/decode_residual.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/decoder_interpolate_lsf.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/do_plc.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/encode.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/energy_inverse.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/enh_upsample.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/enhancer.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/enhancer_interface.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/filtered_cb_vecs.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/frame_classify.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/gain_dequant.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/gain_quant.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/get_cd_vec.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/get_lsp_poly.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/get_sync_seq.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/hp_input.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/hp_output.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/ilbc.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/index_conv_dec.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/index_conv_enc.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/init_decode.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/init_encode.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/interpolate.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/interpolate_samples.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/lpc_encode.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/lsf_check.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/lsf_interpolate_to_poly_dec.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/lsf_interpolate_to_poly_enc.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/lsf_to_lsp.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/lsf_to_poly.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/lsp_to_lsf.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/my_corr.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/nearest_neighbor.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/pack_bits.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/poly_to_lsf.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/poly_to_lsp.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/refiner.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/simple_interpolate_lsf.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/simple_lpc_analysis.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/simple_lsf_dequant.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/simple_lsf_quant.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/smooth.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/smooth_out_data.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/sort_sq.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/split_vq.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/state_construct.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/state_search.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/swap_bytes.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/unpack_bits.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/vq3.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/vq4.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/window32_w32.o \
	$(obj).target/$(TARGET)/webrtc/modules/audio_coding/codecs/ilbc/xcorr_coef.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	--sysroot=$(ANDROID_NDK_PATH)/platforms/android-9/arch-arm \
	-Wl,--icf=safe \
	-L. \
	-L$(ANDROID_NDK_PATH)/sources/cxx-stl/gnu-libstdc++/4.4.3/libs/armeabi \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections

LDFLAGS_Release := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	--sysroot=$(ANDROID_NDK_PATH)/platforms/android-9/arch-arm \
	-Wl,--icf=safe \
	-L. \
	-L$(ANDROID_NDK_PATH)/sources/cxx-stl/gnu-libstdc++/4.4.3/libs/armeabi \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections

LIBS := \
	 \
	-lgnustl_static \
	$(ANDROID_NDK_PATH)toolchains/arm-linux-androideabi-4.4.3/prebuilt/$(PLATFORM)/bin/../lib/gcc/arm-linux-androideabi/4.4.3/libgcc.a \
	-lc \
	-ldl \
	-lstdc++ \
	-lm

$(obj).target/webrtc/modules/libiLBC.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/webrtc/modules/libiLBC.a: LIBS := $(LIBS)
$(obj).target/webrtc/modules/libiLBC.a: TOOLSET := $(TOOLSET)
$(obj).target/webrtc/modules/libiLBC.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/webrtc/modules/libiLBC.a
# Add target alias
.PHONY: iLBC
iLBC: $(obj).target/webrtc/modules/libiLBC.a

# Add target alias to "all" target.
.PHONY: all
all: iLBC

# Add target alias
.PHONY: iLBC
iLBC: $(builddir)/libiLBC.a

# Copy this to the static library output path.
$(builddir)/libiLBC.a: TOOLSET := $(TOOLSET)
$(builddir)/libiLBC.a: $(obj).target/webrtc/modules/libiLBC.a FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/libiLBC.a
# Short alias for building this static library.
.PHONY: libiLBC.a
libiLBC.a: $(obj).target/webrtc/modules/libiLBC.a $(builddir)/libiLBC.a

# Add static library to "all" target.
.PHONY: all
all: $(builddir)/libiLBC.a

