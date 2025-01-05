DEVICE_PATH := device/legion/halo

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS +=	\
	system		\
	vendor		\
	vendor_dlkm

# architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv9-a
TARGET_CPU_ABI := arm64-v9a
TARGET_CPU_ABI2 := arm64-v8a

# bootloader
TARGET_BOOTLOADER_BOARD_NAME := taro
TARGET_NO_BOOTLOADER := true

#Display
TARGET_SCREEN_DENSITY := 480

# android kernel
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/ksu/Image

# partition controll
