# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := v8_nosnapshot
DEFS_Debug := \
	'-DV8_GYP_BUILD' \
	'-DV8_TYPED_ARRAY_MAX_SIZE_IN_HEAP=0' \
	'-DV8_TARGET_ARCH_X64' \
	'-DV8_EMBEDDER_STRING="-node.17"' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_PROMISE_INTERNAL_FIELD_COUNT=1' \
	'-DV8_INTL_SUPPORT' \
	'-DV8_CONCURRENT_MARKING' \
	'-DDISABLE_UNTRUSTED_CODE_MITIGATIONS' \
	'-DUCONFIG_NO_SERVICE=1' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION=1' \
	'-DU_HAVE_STD_STRING=1' \
	'-DUCONFIG_NO_BREAK_ITERATION=0' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS' \
	'-DOBJECT_PRINT' \
	'-DVERIFY_HEAP' \
	'-DV8_TRACE_MAPS' \
	'-DV8_ENABLE_ALLOCATION_TIMEOUT' \
	'-DV8_ENABLE_FORCE_SLOW_PATH' \
	'-DENABLE_HANDLE_ZAPPING'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-fno-strict-aliasing \
	-m64 \
	-g \
	-Woverloaded-virtual \
	 \
	-fdata-sections \
	-ffunction-sections \
	-O3

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Debug := \
	-I$(srcdir)/deps/v8 \
	-I$(srcdir)/. \
	-I$(obj)/gen \
	-I$(srcdir)/deps/icu-small/source/i18n \
	-I$(srcdir)/deps/icu-small/source/common

DEFS_Release := \
	'-DV8_GYP_BUILD' \
	'-DV8_TYPED_ARRAY_MAX_SIZE_IN_HEAP=0' \
	'-DV8_TARGET_ARCH_X64' \
	'-DV8_EMBEDDER_STRING="-node.17"' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_PROMISE_INTERNAL_FIELD_COUNT=1' \
	'-DV8_INTL_SUPPORT' \
	'-DV8_CONCURRENT_MARKING' \
	'-DDISABLE_UNTRUSTED_CODE_MITIGATIONS' \
	'-DUCONFIG_NO_SERVICE=1' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION=1' \
	'-DU_HAVE_STD_STRING=1' \
	'-DUCONFIG_NO_BREAK_ITERATION=0'

# Flags passed to all source files.
CFLAGS_Release := \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-fno-strict-aliasing \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer \
	-fdata-sections \
	-ffunction-sections \
	 \
	-O3

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Release := \
	-I$(srcdir)/deps/v8 \
	-I$(srcdir)/. \
	-I$(obj)/gen \
	-I$(srcdir)/deps/icu-small/source/i18n \
	-I$(srcdir)/deps/icu-small/source/common

OBJS := \
	$(obj).target/$(TARGET)/gen/experimental-extras-libraries.o \
	$(obj).target/$(TARGET)/gen/extras-libraries.o \
	$(obj).target/$(TARGET)/gen/libraries.o \
	$(obj).target/$(TARGET)/deps/v8/src/snapshot/embedded-empty.o \
	$(obj).target/$(TARGET)/deps/v8/src/snapshot/snapshot-empty.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/deps/v8/gypfiles/libv8_base.a $(obj).target/deps/v8/gypfiles/js2c.stamp $(obj).target/tools/icu/icuuc.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64 \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64 \
	-m64

LIBS :=

$(obj).target/deps/v8/gypfiles/libv8_nosnapshot.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/deps/v8/gypfiles/libv8_nosnapshot.a: LIBS := $(LIBS)
$(obj).target/deps/v8/gypfiles/libv8_nosnapshot.a: TOOLSET := $(TOOLSET)
$(obj).target/deps/v8/gypfiles/libv8_nosnapshot.a: $(OBJS) $(obj).target/deps/v8/gypfiles/libv8_base.a FORCE_DO_CMD
	$(call do_cmd,alink_thin)

all_deps += $(obj).target/deps/v8/gypfiles/libv8_nosnapshot.a
# Add target alias
.PHONY: v8_nosnapshot
v8_nosnapshot: $(obj).target/deps/v8/gypfiles/libv8_nosnapshot.a

# Add target alias to "all" target.
.PHONY: all
all: v8_nosnapshot
