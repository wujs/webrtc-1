# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := signal_processing
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
	-Iwebrtc/common_audio/signal_processing/include \
	-Iwebrtc/system_wrappers/interface

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
	-Iwebrtc/common_audio/signal_processing/include \
	-Iwebrtc/system_wrappers/interface

OBJS := \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/auto_corr_to_refl_coef.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/auto_correlation.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/complex_fft.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/copy_set_operations.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/cross_correlation.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/division_operations.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/dot_product_with_scale.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/downsample_fast.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/energy.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/filter_ar.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/filter_ma_fast_q12.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/get_hanning_window.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/get_scaling_square.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/ilbc_specific_functions.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/levinson_durbin.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/lpc_to_refl_coef.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/min_max_operations.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/randomization_functions.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/refl_coef_to_lpc.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/real_fft.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/resample.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/resample_48khz.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/resample_by_2.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/resample_by_2_internal.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/resample_fractional.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/spl_init.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/spl_sqrt.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/spl_version.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/splitting_filter.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/sqrt_of_one_minus_x_squared.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/vector_scaling_operations.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/complex_bit_reverse_arm.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/spl_sqrt_floor_arm.o \
	$(obj).target/$(TARGET)/webrtc/common_audio/signal_processing/filter_ar_fast_q12_armv7.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.S FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.S FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.S FORCE_DO_CMD
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

$(obj).target/webrtc/common_audio/libsignal_processing.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/webrtc/common_audio/libsignal_processing.a: LIBS := $(LIBS)
$(obj).target/webrtc/common_audio/libsignal_processing.a: TOOLSET := $(TOOLSET)
$(obj).target/webrtc/common_audio/libsignal_processing.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/webrtc/common_audio/libsignal_processing.a
# Add target alias
.PHONY: signal_processing
signal_processing: $(obj).target/webrtc/common_audio/libsignal_processing.a

# Add target alias to "all" target.
.PHONY: all
all: signal_processing

# Add target alias
.PHONY: signal_processing
signal_processing: $(builddir)/libsignal_processing.a

# Copy this to the static library output path.
$(builddir)/libsignal_processing.a: TOOLSET := $(TOOLSET)
$(builddir)/libsignal_processing.a: $(obj).target/webrtc/common_audio/libsignal_processing.a FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/libsignal_processing.a
# Short alias for building this static library.
.PHONY: libsignal_processing.a
libsignal_processing.a: $(obj).target/webrtc/common_audio/libsignal_processing.a $(builddir)/libsignal_processing.a

# Add static library to "all" target.
.PHONY: all
all: $(builddir)/libsignal_processing.a

