# inherit Bliss
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# bootanimation
TARGET_BOOT_ANIMATION_RES := 1440

# inherit device mk
$(call inherit-product, device/legion/halo/device.mk)

# device
PRODUCT_DEVICE := halo
PRODUCT_NAME := bliss_halo
PRODUCT_BRAND := legion
PRODUCT_MODEL := Y70 L71091
PRODUCT_MANUFACTURER := legion

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
