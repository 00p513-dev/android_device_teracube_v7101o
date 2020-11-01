#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from bismuth device
$(call inherit-product, device/teracube/bismuth/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_bismuth
PRODUCT_DEVICE := bismuth
PRODUCT_BRAND := Teracube
PRODUCT_MODEL := Teracube One
PRODUCT_MANUFACTURER := bismuth

# Build info
BUILD_FINGERPRINT := "Teracube/Teracube_One/Teracube_One:9/PPR1.180610.011/20200610:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=bismuth \
    PRODUCT_NAME=bismuth \
    PRIVATE_BUILD_DESC="Teracube_One-user 9 PPR1.180610.011 20200610 release-keys"
    
PRODUCT_GMS_CLIENTID_BASE := android-vanzo
