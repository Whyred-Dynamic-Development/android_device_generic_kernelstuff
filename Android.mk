ifeq ($(TARGET_DEVICE), kernelstuff)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
