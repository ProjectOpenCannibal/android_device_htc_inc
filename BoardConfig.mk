USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/inc/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := inc

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := inc

# Legacy support flags
BOARD_USE_LEGACY_TRACKPAD := true

BOARD_HAS_SCREEN_OFF_FLICKER := true

BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_NEW_PPPOX := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun%d/file

# cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 000a0000 00020000 "misc"
# mtd1: 00480000 00020000 "recovery"
# mtd2: 00300000 00020000 "boot"
# mtd3: 0f800000 00020000 "system"
# mtd4: 000a0000 00020000 "local"
# mtd5: 02800000 00020000 "cache"
# mtd6: 09500000 00020000 "datadata"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00300000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0f800000   # limited so we enforce room to grow
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09500000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/htc/inc/kernel

BOARD_HAS_DATADATA := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_DATA_DEVICE := /dev/block/mmcblk0p1
BOARD_DATA_FILESYSTEM := auto
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p2
BOARD_CACHE_FILESYSTEM := auto

# Make sure vold formats the proper sdcard partition
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_CUSTOM_RECOVERY_UI := ../../device/htc/inc/recovery/default_recovery_ui.c
BOARD_CUSTOM_RECOVERY_POWER_PROFILE := ../../device/htc/inc/recovery/custom_power.c

BOARD_TS_MAX_ROWS := 34
