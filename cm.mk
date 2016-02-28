# CM Stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device Stuff
$(call inherit-product, device/samsung/comanche/comanche.mk)

# Release Name
PRODUCT_RELEASE_NAME := comanche

# Bootanimation
TARGET_BOOTANIMATION_NAME := 480

# Device Naming
PRODUCT_DEVICE := comanche
PRODUCT_NAME := cm_comanche
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-I547
PRODUCT_MANUFACTURER := Samsung

# Device Overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=comanche \
    PRIVATE_BUILD_DESC="comanche-user 4.1.2 JZO54K I847UCCNJ1 release-keys" \
    BUILD_FINGERPRINT="samsung/comanche/comanche:4.1.2/JZO54K/I847UCCNJ1:user/release-keys"
