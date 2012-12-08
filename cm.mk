$(call inherit-product, device/samsung/comanche/full_comanche.mk)
$(call inherit-product, $(LOCAL_PATH)/build_props.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I547 TARGET_DEVICE=comanche BUILD_FINGERPRINT="SGH-I547-user 4.0.4 IMM76D I547UCALEM release-keys" PRIVATE_BUILD_DESC="samsung/SGH-I547/comanche:4.0.4/IMM76D/I547UCALEM:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += USER=android-build
PRODUCT_BUILD_PROP_OVERRIDES += KBUILD_BUILD_USER=android-build
PRODUCT_BUILD_PROP_OVERRIDES += KBUILD_BUILD_HOST=buildbot

PRODUCT_NAME := cm_comanche
PRODUCT_DEVICE := comanche

