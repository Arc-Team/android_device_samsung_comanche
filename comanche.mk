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

LOCAL_PATH := device/samsung/comanche

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_COPY_FILES += \
    device/samsung/comanche/proprietary/lib/libmmjpeg.so:obj/lib/libmmjpeg.so \
    device/samsung/comanche/proprietary/bin/mpdecision:system/bin/mpdecision \
    device/samsung/comanche/proprietary/bin/thermald:system/bin/thermald \
    device/samsung/comanche/proprietary/etc/thermald.conf:system/etc/thermald.conf \
    device/samsung/comanche/proprietary/lib/libacdbloader.so:system/lib/libacdbloader.so \
    device/samsung/comanche/proprietary/lib/libcsd-client.so:system/lib/libcsd-client.so \
    device/samsung/comanche/proprietary/lib/libmmparser.so:system/lib/libmmparser.so \
    device/samsung/comanche/proprietary/lib/libmmosal.so:system/lib/libmmosal.so \
    device/samsung/comanche/proprietary/lib/libdivxdrm.so:system/lib/libdivxdrm.so \
    device/samsung/comanche/proprietary/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/samsung/comanche/proprietary/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/samsung/comanche/proprietary/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/samsung/comanche/proprietary/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/samsung/comanche/proprietary/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/samsung/comanche/proprietary/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/samsung/comanche/proprietary/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/samsung/comanche/proprietary/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    device/samsung/comanche/proprietary/bin/netmgrd:system/bin/netmgrd \
    device/samsung/comanche/proprietary/bin/sec-ril:system/bin/sec-ril \
    device/samsung/comanche/proprietary/bin/qmiproxy:system/bin/qmiproxy \
    device/samsung/comanche/proprietary/bin/qmuxd:system/bin/qmuxd \
    device/samsung/comanche/proprietary/bin/rmt_storage:system/bin/rmt_storage \
    device/samsung/comanche/proprietary/bin/rild:system/bin/rild \
    device/samsung/comanche/proprietary/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
    device/samsung/comanche/proprietary/lib/libril.so:system/lib/libril.so \
    device/samsung/comanche/proprietary/lib/libsecril-client.so:system/lib/libsecril-client.so \
    device/samsung/comanche/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    device/samsung/comanche/proprietary/lib/libqdi.so:system/lib/libqdi.so \
    device/samsung/comanche/proprietary/lib/libqdp.so:system/lib/libqdp.so \
    device/samsung/comanche/proprietary/lib/libqmiservices.so:system/lib/libqmiservices.so \
    device/samsung/comanche/proprietary/lib/libreference-ril.so:system/lib/libreference-ril.so \
    device/samsung/comanche/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    device/samsung/comanche/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \
    device/samsung/comanche/proprietary/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
    device/samsung/comanche/proprietary/lib/libidl.so:system/lib/libidl.so \
    device/samsung/comanche/proprietary/lib/libnetmgr.so:system/lib/libnetmgr.so \
    device/samsung/comanche/proprietary/lib/libqmi_cci.so:system/lib/libqmi_cci.so \
    device/samsung/comanche/proprietary/lib/libqmi_csi.so:system/lib/libqmi_csi.so \
    device/samsung/comanche/proprietary/lib/libqmi_common_so.so:system/lib/libqmi_common_so.so \
    device/samsung/comanche/proprietary/lib/libqmi_encdec.so:system/lib/libqmi_encdec.so \
    device/samsung/comanche/proprietary/lib/libatparser.so:system/lib/libatparser.so \
    device/samsung/comanche/proprietary/lib/libqcci_legacy.so:system/lib/libqcci_legacy.so \
    device/samsung/comanche/proprietary/lib/libqmi_client_qmux.so:system/lib/libqmi_client_qmux.so \
    device/samsung/comanche/proprietary/lib/libomission_avoidance.so:system/lib/libomission_avoidance.so \
    device/samsung/comanche/proprietary/lib/libfactoryutil.so:system/lib/libfactoryutil.so \
    device/samsung/comanche/proprietary/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    device/samsung/comanche/proprietary/vendor/firmware/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so \
    device/samsung/comanche/proprietary/lib/hw/sensors.msm8960.so:system/lib/hw/sensors.msm8960.so \
    device/samsung/comanche/proprietary/lib/libakmd.so:system/lib/libakmd.so \
    device/samsung/comanche/proprietary/lib/libinvensense_hal.so:system/lib/libinvensense_hal.so \
    device/samsung/comanche/proprietary/lib/libmllite.so:system/lib/libmllite.so \
    device/samsung/comanche/proprietary/lib/libmlplatform.so:system/lib/libmlplatform.so \
    device/samsung/comanche/proprietary/lib/libyamaha.so:system/lib/libyamaha.so \
    device/samsung/comanche/proprietary/lib/libmplmpu.so:system/lib/libmplmpu.so \
    device/samsung/comanche/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/samsung/comanche/proprietary/lib/hw/camera.vendor.msm8960.so:system/lib/hw/camera.vendor.msm8960.so \
    device/samsung/comanche/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/samsung/comanche/proprietary/lib/libmmstillomx.so:system/lib/libmmstillomx.so \
    device/samsung/comanche/proprietary/lib/libimage-jpeg-dec-omx-comp.so:system/lib/libimage-jpeg-dec-omx-comp.so \
    device/samsung/comanche/proprietary/lib/libimage-jpeg-enc-omx-comp.so:system/lib/libimage-jpeg-enc-omx-comp.so \
    device/samsung/comanche/proprietary/lib/libimage-omx-common.so:system/lib/libimage-omx-common.so \
    device/samsung/comanche/proprietary/lib/libvdis.so:system/lib/libvdis.so \
    device/samsung/comanche/proprietary/lib/libsecnativefeature.so:system/lib/libsecnativefeature.so \
    device/samsung/comanche/proprietary/lib/libgemini.so:system/lib/libgemini.so \
    device/samsung/comanche/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/samsung/comanche/proprietary/lib/libmmmpod.so:system/lib/libmmmpod.so \
    device/samsung/comanche/proprietary/lib/libmmstereo.so:system/lib/libmmstereo.so \
    device/samsung/comanche/proprietary/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
    device/samsung/comanche/proprietary/lib/libmmcamera_frameproc.so:system/lib/libmmcamera_frameproc.so \
    device/samsung/comanche/proprietary/lib/libmmcamera_statsproc30.so:system/lib/libmmcamera_statsproc30.so \
    device/samsung/comanche/proprietary/lib/libchromatix_imx074_default_video.so:system/lib/libchromatix_imx074_default_video.so \
    device/samsung/comanche/proprietary/lib/libchromatix_imx074_preview.so:system/lib/libchromatix_imx074_preview.so \
    device/samsung/comanche/proprietary/lib/libchromatix_ov2720_default_video.so:system/lib/libchromatix_ov2720_default_video.so \
    device/samsung/comanche/proprietary/lib/libchromatix_ov2720_preview.so:system/lib/libchromatix_ov2720_preview.so \
    device/samsung/comanche/proprietary/lib/libchromatix_s5k3l1yx_default_video.so:system/lib/libchromatix_s5k3l1yx_default_video.so \
    device/samsung/comanche/proprietary/lib/libchromatix_s5k3l1yx_preview.so:system/lib/libchromatix_s5k3l1yx_preview.so \
    device/samsung/comanche/proprietary/lib/libchromatix_s5k3l1yx_video_hd.so:system/lib/libchromatix_s5k3l1yx_video_hd.so \
    device/samsung/comanche/proprietary/lib/libchromatix_s5k3l1yx_zsl.so:system/lib/libchromatix_s5k3l1yx_zsl.so \
    device/samsung/comanche/proprietary/cameradata/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \
    device/samsung/comanche/proprietary/cameradata/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv \
    device/samsung/comanche/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    device/samsung/comanche/proprietary/bin/macloader:system/bin/macloader \
    device/samsung/comanche/proprietary/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/samsung/comanche/proprietary/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    device/samsung/comanche/proprietary/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    device/samsung/comanche/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/comanche/proprietary/etc/firmware/wcnss.b00:system/etc/firmware/wcnss.b00 \
    device/samsung/comanche/proprietary/etc/firmware/wcnss.b01:system/etc/firmware/wcnss.b01 \
    device/samsung/comanche/proprietary/etc/firmware/wcnss.b02:system/etc/firmware/wcnss.b02 \
    device/samsung/comanche/proprietary/etc/firmware/wcnss.b04:system/etc/firmware/wcnss.b04 \
    device/samsung/comanche/proprietary/etc/firmware/wcnss.b05:system/etc/firmware/wcnss.b05 \
    device/samsung/comanche/proprietary/etc/firmware/wcnss.mdt:system/etc/firmware/wcnss.mdt \
    device/samsung/comanche/proprietary/bin/hciattach:system/bin/hciattach \
    device/samsung/comanche/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    device/samsung/comanche/proprietary/bin/LE_dut:system/bin/LE_dut \
    device/samsung/comanche/proprietary/bin/qcom_audio_dut:system/bin/qcom_audio_dut \
    device/samsung/comanche/proprietary/bin/qcom_dut:system/bin/qcom_dut \
    device/samsung/comanche/proprietary/lib/libqc-opt.so:system/lib/libqc-opt.so \
    device/samsung/comanche/proprietary/lib/hw/nfc.MSM8960.so:system/lib/hw/nfc.msm8960.so

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
    device/samsung/comanche/gps/etc/gps.conf:system/etc/gps.conf \
    device/samsung/comanche/gps/etc/sap.conf:system/etc/sap.conf

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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_COPY_FILES += \
    device/samsung/comanche/proprietary/lib/libsecnativefeature.so:system/lib/libsecnativefeature.so \
    device/samsung/comanche/proprietary/lib/libmmmpod.so:system/lib/libmmmpod.so \
    device/samsung/comanche/proprietary/lib/libmmstereo.so:system/lib/libmmstereo.so \
    device/samsung/comanche/proprietary/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
    device/samsung/comanche/proprietary/cameradata/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \
    device/samsung/comanche/proprietary/cameradata/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv \
    device/samsung/comanche/proprietary/vendor/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    device/samsung/comanche/proprietary/vendor/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    device/samsung/comanche/proprietary/vendor/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    device/samsung/comanche/proprietary/vendor/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    device/samsung/comanche/proprietary/vendor/lib/egl/libGLESv2S3D_adreno.so:system/vendor/lib/egl/libGLESv2S3D_adreno.so \
    device/samsung/comanche/proprietary/vendor/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    device/samsung/comanche/proprietary/vendor/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    device/samsung/comanche/proprietary/vendor/lib/libc2d2_z180.so:system/vendor/lib/libc2d2_z180.so \
    device/samsung/comanche/proprietary/vendor/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    device/samsung/comanche/proprietary/vendor/lib/libCB.so:system/vendor/lib/libCB.so \
    device/samsung/comanche/proprietary/vendor/lib/libgsl.so:system/vendor/lib/libgsl.so \
    device/samsung/comanche/proprietary/vendor/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    device/samsung/comanche/proprietary/vendor/lib/libOpenVG.so:system/vendor/lib/libOpenVG.so \
    device/samsung/comanche/proprietary/vendor/lib/libsc-a2xx.so:system/vendor/lib/libsc-a2xx.so \
    device/samsung/comanche/proprietary/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/samsung/comanche/proprietary/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/samsung/comanche/proprietary/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/samsung/comanche/proprietary/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/samsung/comanche/proprietary/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/samsung/comanche/proprietary/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/samsung/comanche/proprietary/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/samsung/comanche/proprietary/lib/libdivxdrm.so:system/lib/libdivxdrm.so \
    device/samsung/comanche/proprietary/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so \
    device/samsung/comanche/proprietary/lib/libI420colorconvert.so:system/lib/libI420colorconvert.so \
    device/samsung/comanche/proprietary/lib/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \
    device/samsung/comanche/proprietary/lib/libmmparser.so:system/lib/libmmparser.so \
    device/samsung/comanche/proprietary/lib/libmmosal.so:system/lib/libmmosal.so \
    device/samsung/comanche/proprietary/lib/libwvm.so:system/lib/libwvm.so \
    device/samsung/comanche/proprietary/lib/libmplmpu.so:system/lib/libmplmpu.so \
    device/samsung/comanche/proprietary/lib/libyamaha.so:system/lib/libyamaha.so


# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

# System Properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_PROPERTY_OVERRIDES += \
    qcom.hw.aac.encoder=true \
    ro.config.vc_call_vol_steps=10

PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=dyn \
    ro.opengles.version=131072 \
    camera2.portability.force_api=1

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.media.use-awesome=true \
    media.stagefright.use-awesome=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.data_netmgrd_nint=16 \
    persist.radio.add_power_save=1 \
    persist.radio.mode_pref_nv10=1 \
    persist.radio.no_wait_for_card=0

PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3=""

PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# Configure libhwui
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hwui.texture_cache_size=48 \
	ro.hwui.layer_cache_size=32 \
	ro.hwui.r_buffer_cache_size=4 \
	ro.hwui.path_cache_size=24 \
	ro.hwui.gradient_cache_size=1 \
	ro.hwui.drop_shadow_cache_size=5 \
	ro.hwui.texture_cache_flushrate=0.5 \
	ro.hwui.text_small_cache_width=1024 \
	ro.hwui.text_small_cache_height=1024 \
	ro.hwui.text_large_cache_width=2048 \
	ro.hwui.text_large_cache_height=1024

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true \
    ro.cwm.repeatable_keys=114,115

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.enable_boot_charger_mode=1

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler

# Camera Wrapper
PRODUCT_PACKAGES += \
    camera.msm8960

# CRDA
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# Display
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    memtrack.msm8960

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
    $(LOCAL_PATH)/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    $(LOCAL_PATH)/keylayout/Vendor_04e8_Product_7021.kl:system/usr/keylayout/Vendor_04e8_Product_7021.kl \
    $(LOCAL_PATH)/configs/excluded-input-devices.xml:system/etc/excluded-input-devices.xml

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml

# OMX
PRODUCT_PACKAGES += \
    libdashplayer \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Power
PRODUCT_PACKAGES += \
    power.msm8960

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.led.sh \
    init.qcom.power.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=true

# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-flags=--no-watch-dog

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    hostapd_default.conf \
    libwpa_client \
    macloader \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1 \
    debug.mdpcomp.logs=0 \
    persist.hwc.mdpcomp.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs


# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_comanche
PRODUCT_DEVICE := comanche
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SGH-I547
