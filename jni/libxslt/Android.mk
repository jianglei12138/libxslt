LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := libxml/shared/$(TARGET_ARCH_ABI)/libxml2.so
LOCAL_MODULE:= xml2
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libxslt 
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/libxml/include \
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/../ \
	$(LOCAL_PATH)/iconv/include

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H

LOCAL_SRC_FILES := \
	attributes.c   \
	attrvt.c   \
	documents.c   \
	extensions.c   \
	extra.c   \
	functions.c   \
	imports.c   \
	keys.c   \
	namespaces.c   \
	numbers.c   \
	pattern.c   \
	preproc.c   \
	security.c   \
	templates.c   \
	transform.c   \
	variables.c   \
	xslt.c   \
	xsltlocale.c   \
	xsltutils.c 

LOCAL_SHARED_LIBRARIES :=   xml2 
include $(BUILD_SHARED_LIBRARY)
#include $(LOCAL_PATH)/libxml/Android.mk
