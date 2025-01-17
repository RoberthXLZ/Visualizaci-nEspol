# This file is generated by gyp; do not edit.

TOOLSET := host
TARGET := torque
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
	-I$(srcdir)/deps/v8

DEFS_Release := \
	'-DV8_GYP_BUILD' \
	'-DV8_TYPED_ARRAY_MAX_SIZE_IN_HEAP=0' \
	'-DV8_TARGET_ARCH_X64' \
	'-DV8_EMBEDDER_STRING="-node.17"' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_PROMISE_INTERNAL_FIELD_COUNT=1' \
	'-DV8_INTL_SUPPORT' \
	'-DV8_CONCURRENT_MARKING' \
	'-DDISABLE_UNTRUSTED_CODE_MITIGATIONS'

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
	-I$(srcdir)/deps/v8

OBJS := \
	$(obj).host/$(TARGET)/deps/v8/src/torque/declarable.o \
	$(obj).host/$(TARGET)/deps/v8/src/torque/declaration-visitor.o \
	$(obj).host/$(TARGET)/deps/v8/src/torque/declarations.o \
	$(obj).host/$(TARGET)/deps/v8/src/torque/earley-parser.o \
	$(obj).host/$(TARGET)/deps/v8/src/torque/file-visitor.o \
	$(obj).host/$(TARGET)/deps/v8/src/torque/implementation-visitor.o \
	$(obj).host/$(TARGET)/deps/v8/src/torque/scope.o \
	$(obj).host/$(TARGET)/deps/v8/src/torque/source-positions.o \
	$(obj).host/$(TARGET)/deps/v8/src/torque/torque-parser.o \
	$(obj).host/$(TARGET)/deps/v8/src/torque/torque.o \
	$(obj).host/$(TARGET)/deps/v8/src/torque/type-oracle.o \
	$(obj).host/$(TARGET)/deps/v8/src/torque/types.o \
	$(obj).host/$(TARGET)/deps/v8/src/torque/utils.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).host/deps/v8/gypfiles/libv8_libbase.a

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

LIBS := \
	-ldl \
	-lrt

$(builddir)/torque: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/torque: LIBS := $(LIBS)
$(builddir)/torque: LD_INPUTS := $(OBJS) $(obj).host/deps/v8/gypfiles/libv8_libbase.a
$(builddir)/torque: TOOLSET := $(TOOLSET)
$(builddir)/torque: $(OBJS) $(obj).host/deps/v8/gypfiles/libv8_libbase.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/torque
# Add target alias
.PHONY: torque
torque: $(builddir)/torque

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/torque

