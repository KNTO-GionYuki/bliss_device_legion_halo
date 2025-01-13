STOCK_KERNEL_ZUI_VER := 14.0.697
DEVICE_PATH := device/legion/halo
# include halo vendor blobs
$(call inherit-product, vendor/legion/halo/halo-vendor.mk)
# inherit GSI key
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# A/B update
#$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# APEX
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# first lunch Android API
PRODUCT_SHIPPING_API_LEVEL := 32

# soong build system config
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

#PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl-qti \
    android.hardware.boot@1.2-impl-qtl.recovery \
    android.hardware.boot@1.2-service

# fastbootd
PRODUCT_PACKAGES +=	\
	fastbootd

#Initialization
PRODUCT_PACKAGES += 	\
	fstab.qcom	\
	fstab.qcom.vendor_ramdisk

PRODUCT_COPY_FILES +=	\
	$(LOCAL_PATH)/prebuilt/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.qcom			\
	$(LOCAL_PATH)/prebuilt/etc/init.recovery.qcom.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc
#	$(LOCAL_PATH)/prebuilt/etc/fstab.qcom:$(TARGET_COPY_OUT_RECOVERY)/root/etc/recovery.fstab

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

##for kernel dtb image
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/$(STOCK_KERNEL_ZUI_VER)/dtb:$(PRODUCT_OUT)/dtb.img

##init 1st vendor_ramdisk
#PRODUCT_PACKAGES +=			\
    linker.vendor_ramdisk		\
    shell_and_utilities_vendor_ramdisk	\
    adbd.vendor_ramdisk			\
    resize2fs.vendor_ramdisk		\
    tune2fs.vendor_ramdisk

PRODUCT_BOOT_JARS += \
    WfdCommon
