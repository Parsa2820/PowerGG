TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PowerGG

PowerGG_FILES = Tweak.x
PowerGG_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk
