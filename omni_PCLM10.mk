# Release name
PRODUCT_RELEASE_NAME := OPPO Reno Ace

# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit Telephony packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit 64bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_PCLM10
PRODUCT_BRAND := oppo
PRODUCT_DEVICE := PCLM10
PRODUCT_MANUFACTURER := oppo
PRODUCT_MODEL := OPPO Reno Ace

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.gatekeeper.disable_spu=true
