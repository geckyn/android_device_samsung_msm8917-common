LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE := vendor.nxp.hardware.nfc@1.0-service.samsung8917
LOCAL_MULTILIB := 32
LOCAL_INIT_RC := vendor.nxp.hardware.nfc@1.0-service.samsung8917.rc
LOCAL_SRC_FILES := \
	service.cpp \

LOCAL_SHARED_LIBRARIES := \
	liblog \
	libcutils \
	libdl \
	libbase \
	libutils \
	libhwbinder \
	libhardware_legacy \
	libhardware \

LOCAL_SHARED_LIBRARIES += \
	libhidlbase \
	libhidltransport \
	android.hardware.nfc@1.0 \
	vendor.nxp.hardware.nfc@1.0 \

include $(BUILD_EXECUTABLE)
