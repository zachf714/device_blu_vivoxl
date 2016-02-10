DEVICE_FOLDER := device/mt6735/mt6735_board

# inherit from the proprietary version

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mt6735_board

# Platform
TARGET_BOARD_PLATFORM := mt6735
TARGET_BOARD_PLATFORM_GPU := mali-t720mp2

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Architecture
TARGET_ARCH := arm
TARGET_CPU_VARIANT := cortex-a53
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a53
TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# these settings are individual for each device.
#BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
#BOARD_KERNEL_BASE := 0x40078000
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000 --board m71.Flyme_OS_4. --cmdline bootopt=64S3,32N2,64N2
#BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
#BOARD_FLASH_BLOCK_SIZE := 512

# Graphics settings
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
#BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
#TARGET_DISABLE_TRIPLE_BUFFERING := false

TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/kernel
TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery.fstab
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_FOLDER)/mkmtkbootimg.mk

#
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
BOARD_TOUCH_RECOVERY := true
#
#TW_FORCE_CPUINFO_FOR_DEVICE_ID := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

# TWRP
TW_THEME := portrait_hdpi
#
TW_DEFAULT_EXTERNAL_STORAGE := false
RECOVERY_SDCARD_ON_DATA := true
#
TW_NO_REBOOT_BOOTLOADER := false
#TW_NO_EXFAT := true
#TW_NO_EXFAT_FUSE := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

# Logging
#TWRP_EVENT_LOGGING := true
