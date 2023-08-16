#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from V2206 device
$(call inherit-product, device/vivo/V2206/device.mk)

PRODUCT_DEVICE := V2206
PRODUCT_NAME := omni_V2206
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2206
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 12 SP1A.210812.003 compiler09061952 release-keys"

BUILD_FINGERPRINT := vivo/V2206/V2206:12/SP1A.210812.003/compiler09061952:user/release-keys
