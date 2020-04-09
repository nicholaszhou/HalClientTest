# LOCAL_PATH := $(call my-dir)

# LOCAL_SRC_FILES := $(call all-subdir-java-files)

# include $(CLEAR_VARS)

# LOCAL_USE_AAPT2 := true

# LOCAL_MODULE_TAGS := optional

# LOCAL_PACKAGE_NAME := AppTest

# LOCAL_PRIVATE_PLATFORM_APIS := true

# LOCAL_CERTIFICATE := platform

# LOCAL_MODULE_TAGS := optional

# LOCAL_DEX_PREOPT := false

# LOCAL_PROGUARD_ENABLED:= disabled

# include $(BUILD_PACKAGE)

# LOCAL_STATIC_JAVA_LIBRARIES := android.hardware.naruto-V1.0-java-static

#include $(BUILD_PREBUILT)

#include $(call all-makefiles-under,$(LOCAL_PATH))

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
# LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := naruto:libs/naruto.jar
# include $(BUILD_MULTI_PREBUILT)
# LOCAL_STATIC_JAVA_LIBRARIES := naruto

 LOCAL_STATIC_JAVA_LIBRARIES := android.hardware.test-V1.0-java

LOCAL_USE_AAPT2 := true

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-subdir-java-files)

# LOCAL_STATIC_JAVA_LIBRARIES := naruto

# TODO: enable proguard once development has settled down
#LOCAL_PROGUARD_FLAG_FILES := proguard.flags
LOCAL_PROGUARD_ENABLED := disabled

LOCAL_PACKAGE_NAME := TestApp
LOCAL_PRIVATE_PLATFORM_APIS := true

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
