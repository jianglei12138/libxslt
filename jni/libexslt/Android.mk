LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    := libexslt 
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../ \
	$(LOCAL_PATH)/../libxslt/libxml/include \
	$(LOCAL_PATH)/../libxslt/iconv/include \
	$(LOCAL_PATH)/

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H

LOCAL_SRC_FILES := \
	common.c  \
	crypto.c  \
	date.c  \
	dynamic.c  \
	exslt.c  \
	functions.c  \
	math.c  \
	saxon.c  \
	sets.c  \
	strings.c  \

LOCAL_SHARED_LIBRARIES := xslt xml2
LOCAL_LDLIBS := -lz
include $(BUILD_SHARED_LIBRARY)