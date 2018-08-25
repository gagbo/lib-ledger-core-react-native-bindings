# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := djinni_objc
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=djinni_objc' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0 \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-Wall \
	-Wextra \
	-fvisibility=hidden \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=gnu++0x \
	-stdlib=libc++ \
	-fno-rtti \
	-fno-exceptions \
	-fno-threadsafe-statics \
	-Wall \
	-Wextra \
	-fvisibility=hidden \
	-std=c++1y \
	-fexceptions \
	-frtti

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug := \
	-fobjc-arc

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug := \
	-fobjc-arc

INCS_Debug := \
	-I/Users/elkhalilbellakrid/.node-gyp/8.9.4/include/node \
	-I/Users/elkhalilbellakrid/.node-gyp/8.9.4/src \
	-I/Users/elkhalilbellakrid/.node-gyp/8.9.4/deps/uv/include \
	-I/Users/elkhalilbellakrid/.node-gyp/8.9.4/deps/v8/include \
	-I$(srcdir)/../djinni/support-lib/objc

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=djinni_objc' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-Os \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Release := \
	-Wall \
	-Wextra \
	-fvisibility=hidden \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=gnu++0x \
	-stdlib=libc++ \
	-fno-rtti \
	-fno-exceptions \
	-fno-threadsafe-statics \
	-Wall \
	-Wextra \
	-fvisibility=hidden \
	-std=c++1y \
	-fexceptions \
	-frtti

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release := \
	-fobjc-arc

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release := \
	-fobjc-arc

INCS_Release := \
	-I/Users/elkhalilbellakrid/.node-gyp/8.9.4/include/node \
	-I/Users/elkhalilbellakrid/.node-gyp/8.9.4/src \
	-I/Users/elkhalilbellakrid/.node-gyp/8.9.4/deps/uv/include \
	-I/Users/elkhalilbellakrid/.node-gyp/8.9.4/deps/v8/include \
	-I$(srcdir)/../djinni/support-lib/objc

OBJS := \
	$(obj).target/$(TARGET)/../djinni/support-lib/objc/DJIError.o \
	$(obj).target/$(TARGET)/../djinni/support-lib/objc/DJIProxyCaches.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.mm FORCE_DO_CMD
	@$(call do_cmd,objcxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.mm FORCE_DO_CMD
	@$(call do_cmd,objcxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.mm FORCE_DO_CMD
	@$(call do_cmd,objcxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Debug :=

LDFLAGS_Release := \
	-Wl,-dead_strip \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Release :=

LIBS :=

$(builddir)/djinni_objc.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/djinni_objc.a: LIBS := $(LIBS)
$(builddir)/djinni_objc.a: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/djinni_objc.a: TOOLSET := $(TOOLSET)
$(builddir)/djinni_objc.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(builddir)/djinni_objc.a
# Add target alias
.PHONY: djinni_objc
djinni_objc: $(builddir)/djinni_objc.a

# Add target alias to "all" target.
.PHONY: all
all: djinni_objc

# Add target alias
.PHONY: djinni_objc
djinni_objc: $(builddir)/djinni_objc.a

# Short alias for building this static library.
.PHONY: djinni_objc.a
djinni_objc.a: $(builddir)/djinni_objc.a

# Add static library to "all" target.
.PHONY: all
all: $(builddir)/djinni_objc.a

