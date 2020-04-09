LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE := test
LOCAL_SRC_FILES := \
client.cpp \

LOCAL_SHARED_LIBRARIES := \
liblog \
libhidlbase \
libutils \
android.hardware.test@1.0 \

include $(BUILD_EXECUTABLE)