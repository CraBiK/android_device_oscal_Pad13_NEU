#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Pad13_NEU device
$(call inherit-product, device/oscal/Pad13_NEU/device.mk)

PRODUCT_DEVICE := Pad13_NEU
PRODUCT_NAME := Pad13_NEU
PRODUCT_BRAND := OSCAL
PRODUCT_MODEL := Pad 13
PRODUCT_MANUFACTURER := oscal

PRODUCT_GMS_CLIENTID_BASE := android-incar

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Pad13_NEU-user 12 SP1A.210812.016 230213 release-keys"

BUILD_FINGERPRINT := OSCAL/Pad13_NEU/Pad13_NEU:12/SP1A.210812.016/230213:user/release-keys
