# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/teracube/v7101o/v7101o-vendor.mk)

# Properties
include $(LOCAL_PATH)/properties.mk
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# APNs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/apns-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaacwrapper

# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_PACKAGES += \
    Snap

# ImsInit hack
PRODUCT_PACKAGES += \
    ImsInit
    
# Init
PRODUCT_PACKAGES += \
    init.mt6771.rc \
    fstab.enableswap \
    fstab.mt6771

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/mtk-kpd.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-kpd.idc \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl

# NFC
PRODUCT_PACKAGES += \
    NfcNci

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.secure_lock_screen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.secure_lock_screen.xml
    
# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-resurrection

# Overlays -- replace official
PRODUCT_PACKAGES += \
    DummyOverlay

# Screen config
PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Telephony Jars
PRODUCT_BOOT_JARS += \
    mediatek-common \
    mediatek-framework \
    mediatek-ims-base

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 29
