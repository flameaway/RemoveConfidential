TARGET := iphone:clang:latest:16.0
INSTALL_TARGET_PROCESSES = SpringBoard

THEOS_PACKAGE_SCHEME = rootless
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RemoveConfidential

RemoveConfidential_FILES = Tweak.x
RemoveConfidential_CFLAGS = -fobjc-arc


include $(THEOS_MAKE_PATH)/tweak.mk
