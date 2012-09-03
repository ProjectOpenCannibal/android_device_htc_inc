# CDMA device
$(call inherit-product, vendor/cm/config/cdma.mk)

# Inherit some common cm stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := inc

# Inherit device configuration
$(call inherit-product, device/htc/inc/device_inc.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := full_inc
PRODUCT_DEVICE := inc
PRODUCT_BRAND := verizon_wwe
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := HTC Droid Incredible

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=verizon_wwe/inc/inc/inc:4.1.1/JR003C/228551:user/release-keys PRIVATE_BUILD_DESC="inc-user 4.1.1/JR003C/228551 release-keys"
