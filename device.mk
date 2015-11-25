#
# Copyright (C) 2011 The CyanogenMod Project
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

# Device hardware info
PRODUCT_CHIPSET := Qualcomm Snapdragon S4 Pro
PRODUCT_CPU := Dual Core MSM8960 1.5Ghz
PRODUCT_GPU := Adreno 225
PRODUCT_REAR_CAM := 5 MP, 2592 х 1944 pixels
PRODUCT_FRONT_CAM := 1.3MP
PRODUCT_SCREEN_SIZE := 4.0 inches ~233ppi (AMOLED Display)
PRODUCT_SCREEN_RES := $(TARGET_SCREEN_WIDTH) x $(TARGET_SCREEN_HEIGHT)

$(call inherit-product, frameworks/native/build/phone-hdpi-2048-dalvik-heap.mk)

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
    device/samsung/comanche/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/comanche/audio/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x

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

# scripts
PRODUCT_PACKAGES += \
    camera.MSM8960

# prima wlan
PRODUCT_PACKAGES += \
    WCNSS_cfg.dat \
    WCNSS_qcom_cfg.ini \
    WCNSS_qcom_wlan_nv.bin
    
# msm8960 common
$(call inherit-product, device/samsung/msm8960-common/msm8960.mk)

$(call inherit-product, device/samsung/comanche/rootdir/synapse.mk)
