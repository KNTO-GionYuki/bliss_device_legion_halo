LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),halo)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
