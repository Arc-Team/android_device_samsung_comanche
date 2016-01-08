$(call inherit-product, device/samsung/comanche/comanche.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=comanche \
    TARGET_DEVICE=comanche \
    BUILD_FINGERPRINT="Samsung/COMANCHE/comanche:4.1.2/JZO54K/I847UCCNJ1:user/release-keys" \
    PRIVATE_BUILD_DESC="comanche-user 4.1.2 JZO54K I847UCCNJ1 release-keys"

PRODUCT_NAME := cm_comanche
PRODUCT_DEVICE := comanche

