# Inherit AOSP device configuration for d710.
$(call inherit-product, device/samsung/d710/full_d710.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# d710 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/d710

# Setup device specific product configuration.
PRODUCT_NAME := aokp_d710
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d710
PRODUCT_MODEL := SPH-D710
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SPH-D710 TARGET_DEVICE=SPH-D710 BUILD_FINGERPRINT="samsung/SPH-D710/SPH-D710:4.0.4/IMM76I/FH23:user/release-keys"  PRIVATE_BUILD_DESC="SPH-D710-user 4.0.4 IMM76I FH23 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
