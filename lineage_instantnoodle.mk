#
# Copyright (C) 2018 The LineageOS Project
#               2022 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from instantnoodle device
$(call inherit-product, device/oneplus/instantnoodle/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Blur properties
TARGET_ENABLE_BLUR := true

# Extras
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := lineage_instantnoodle
PRODUCT_DEVICE := instantnoodle
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2015

PRODUCT_SYSTEM_NAME := OnePlus8
PRODUCT_SYSTEM_DEVICE := OnePlus8

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus8-user 13 RKQ1.211119.001 Q.bc8d79_8bbd_8bbe release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus8/OnePlus8:13/RKQ1.211119.001/Q.bc8d79_8bbd_8bbe:user/release-keys
