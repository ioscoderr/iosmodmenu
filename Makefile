TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_PACKAGE_SCHEME = rootless


include $(THEOS)/makefiles/common.mk


KITTYMEMORY_SRC = $(wildcard KittyMemory/*.cpp) $(wildcard KittyMemory/*.mm) $(wildcard KittyMemory/*.m) $(wildcard KittyMemory/*.c)

iosmodmenu_CFLAGS = -fobjc-arc
iosmodmenu_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
iosmodmenu_LDFLAGS += -L./
iosmodmenu_LDFLAGS += -lz -stdlib=libc++ 

TWEAK_NAME = iosmodmenu

iosmodmenu_FILES = Tweak.x Menu.mm $(KITTYMEMORY_SRC)


iosmodmenu_LIBRARIES += substrate

iosmodmenu_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText



include $(THEOS_MAKE_PATH)/tweak.mk
