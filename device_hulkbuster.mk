LOCAL_PATH := device/generalmobile/hulkbuster

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
	# $(LOCAL_PATH)/recovery/etc/recovery.fstab:recovery/root/etc/recovery.fstab \

$(call inherit-product, build/target/product/embedded.mk)

PRODUCT_NAME := hulkbuster
