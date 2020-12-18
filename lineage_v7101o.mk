#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from v7101o device
$(call inherit-product, device/teracube/v7101o/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_v7101o
PRODUCT_DEVICE := v7101o
PRODUCT_BRAND := Teracube
PRODUCT_MODEL := Teracube One
PRODUCT_MANUFACTURER := Teracube

# Fingerprint
BUILD_FINGERPRINT := google/sunfish/sunfish:11/RP1A.201105.002/6869500:user/release-keys
BUILD_DESCRIPTION := sunfish-user 11 RP1A.201105.002 6869500 release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
    
PRODUCT_GMS_CLIENTID_BASE := android-vanzo
