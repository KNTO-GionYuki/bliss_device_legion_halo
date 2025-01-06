# include halo vendor blobs
$(call inherit-product, vendor/legion/halo-vendor.mk)
# inherit GSI key
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# A/B update
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# first lunch Android API
PRODUCT_SHIPPING_API_LEVEL := 32

# soong build system config
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
