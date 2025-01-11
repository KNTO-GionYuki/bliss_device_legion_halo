# include halo vendor blobs
$(call inherit-product, vendor/legion/halo/halo-vendor.mk)
# inherit GSI key
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# A/B update
#$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# first lunch Android API
PRODUCT_SHIPPING_API_LEVEL := 32

# soong build system config
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# fastbootd
PRODUCT_PACKAGES +=	\
	fastbootd

#Initialization
PRODUCT_PACKAGES += 	\
	fstab.default	\
	fstab.default.vendor_ramdisk

PRODUCT_COPY_FILES +=	\
	$(LOCAL_PATH)/prebuilt/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.qcom			\
	$(LOCAL_PATH)/prebuilt/etc/init.recovery.qcom.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc

#Generic ramdisk
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_ramdisk.mk)


#Bootcontrol
PRODUCT_PACKAGES +=					\
	android.hardware.boot@1.2-impl-qti		\
	android.hardware.boot@1.2-impl-qti.recovery	\
	android.hardware.boot@1.2-service

# Health
PRODUCT_PACKAGES +=					\
	android.hardware.health-service.qti		\
	android.hardware.health-service.qti_recovery

PRODUCT_PACKAGES +=	\
	init.recovery.qcom.rc
