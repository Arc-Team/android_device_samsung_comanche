# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
 
#
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#
 
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/comanche/comanche-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/comanche/overlay

# Boot animation and screen size
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=240

$(call inherit-product, frameworks/native/build/phone-hdpi-2048-dalvik-heap.mk)

# Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# GPS
PRODUCT_PACKAGES += \
    gps.msm8960 \
    libgps.utils \
    libloc_core \
    libloc_eng

PRODUCT_COPY_FILES += \
    device/samsung/d2-common/gps/etc/gps.conf:system/etc/gps.conf \
    device/samsung/d2-common/gps/etc/sap.conf:system/etc/sap.conf

# Ramdisk
PRODUCT_PACKAGES += \
    50bluetooth \
    60compass \
    init.target.rc \
    wifimac.sh \
    init.reven.post_boot.sh

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1

# Audio configuration
PRODUCT_COPY_FILES += \
    device/samsung/comanche/audio/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/samsung/comanche/audio/audio_policy.conf:system/etc/audio_policy.conf

# Keylayout
PRODUCT_COPY_FILES += \
    device/samsung/comanche/keylayout/fsa9485.kl:system/usr/keylayout/fsa9485.kl \
    device/samsung/comanche/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/samsung/comanche/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    device/samsung/comanche/keylayout/sec_keys.kl:system/usr/keylayout/sec_keys.kl \
    device/samsung/comanche/keylayout/sec_powerkey.kl:system/usr/keylayout/sec_powerkey.kl \
    device/samsung/comanche/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    device/samsung/comanche/keylayout/sii9234_rcp.kl:system/usr/keylayout/sii9234_rcp.kl

# Ramdisk / boot logo
PRODUCT_COPY_FILES += \
    device/samsung/comanche/rootdir/initlogo.rle:root/initlogo.rle \
    device/samsung/comanche/recovery/twrp.fstab:recovery/root/etc/twrp.fstab 

# Media profile
PRODUCT_COPY_FILES += \
    device/samsung/comanche/media/media_profiles.xml:system/etc/media_profiles.xml

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/comanche/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/samsung/comanche/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/samsung/comanche/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/samsung/comanche/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml


PRODUCT_PACKAGES += \
    libnetcmdiface

# scripts
PRODUCT_PACKAGES += \
    camera.MSM8960

# prima wlan
PRODUCT_PACKAGES += \
    WCNSS_cfg.dat \
    WCNSS_qcom_cfg.ini \
    WCNSS_qcom_wlan_nv.bin

# audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.disable=1 \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    persist.audio.speaker.location=high \
    ro.qc.sdk.audio.fluencetype=fluence

# radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ro.telephony.ril_class=comancheRIL

# gps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0 \
    persist.gps.qc_nlp_in_use=0 \
    ro.gps.agps_provider=1

# camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.zsl.prop.enable=0

# msm8960 common
$(call inherit-product, device/samsung/msm8960-common/msm8960.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_comanche
PRODUCT_DEVICE := comanche
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SGH-I547
