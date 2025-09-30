#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# API
PRODUCT_SHIPPING_API_LEVEL := 30

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

PRODUCT_PACKAGES += \
    init.recovery.qcom.rc \
    android.hardware.boot@1.2-impl-qti.recovery \
    fastbootd \
    qcom_decrypt \
    qcom_decrypt_fbe

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
PLATFORM_VERSION := 16.1.0
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
BOARD_USES_QCOM_FBE_DECRYPTION := true

TARGET_RECOVERY_DEVICE_MODULES += \
    libion \
    vendor.display.config@1.0 \
    vendor.display.config@2.0 \
    vendor.qti.hardware.vibrator.service \
    vendor.qti.hardware.vibrator.impl \
    libqtivibratoreffect

#Properties
#TW_OVERRIDE_SYSTEM_PROPS := \
#    "ro.build.fingerprint=ro.system.build.fingerprint;ro.build.version.incremental"

# Vibrator
TW_SUPPORT_INPUT_AIDL_HAPTICS := true
