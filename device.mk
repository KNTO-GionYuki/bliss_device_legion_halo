# include halo vendor blobs
$(call inherit-product, vendor/legion/halo/halo-vendor.mk)
# inherit GSI key
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# A/B update
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# first lunch Android API
PRODUCT_SHIPPING_API_LEVEL := 32

#SEAndroid
$(call inherit-product, device/qcom/sepolicy/SEPolicy.mk)
$(call inherit-product, device/bliss/sepolicy/qcom/sepolicy.mk)

# soong build system config
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
