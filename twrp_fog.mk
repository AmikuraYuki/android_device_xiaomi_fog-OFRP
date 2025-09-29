#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Device codename and path
PRODUCT_RELEASE_NAME := fog
DEVICE_PATH := device/xiaomi/$(PRODUCT_RELEASE_NAME)

# Inherit generic product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device-specific configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)
$(call inherit-product-if-exists, $(DEVICE_PATH)/fox_$(PRODUCT_RELEASE_NAME).mk)

# Device identifiers
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 10C
PRODUCT_MANUFACTURER := Xiaomi
