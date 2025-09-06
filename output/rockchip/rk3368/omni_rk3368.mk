#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rk3368 device
$(call inherit-product, device/rockchip/rk3368/device.mk)

PRODUCT_DEVICE := rk3368
PRODUCT_NAME := omni_rk3368
PRODUCT_BRAND := Android
PRODUCT_MODEL := Clazio
PRODUCT_MANUFACTURER := rockchip

PRODUCT_GMS_CLIENTID_BASE := android-rockchip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rk3368_64-user 7.1.2 NHG47K user.pan.20181031.191018 release-keys"

BUILD_FINGERPRINT := Android/rk3368_64/rk3368:7.1.2/NHG47K/user.pan.20181031.191018:user/release-keys
