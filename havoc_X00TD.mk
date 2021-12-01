#
# Copyright (C) 2022 The Havoc-OS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Havoc-OS  stuff

$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Inherit from X00TD device

$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.

PRODUCT_NAME := havoc_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := Asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := Asus
PRODUCT_GMS_CLIENTID_BASE := android-asus

# Build fingerprint

BUILD_FINGERPRINT := ""google/raven/raven:12/SQ1D.211205.016.A1/7957957:user/release-keys""

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T \
    PRODUCT_NAME=WW_X00T \
    PRIVATE_BUILD_DESC="sdm660_64-user 10 QKQ1 72 release-keys"
