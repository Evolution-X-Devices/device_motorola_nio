#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from nio device
$(call inherit-product, device/motorola/nio/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_nio
PRODUCT_DEVICE := nio
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(100)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="nio_retcn-user 12 S1RN32.55-16-13 fce21a-b9f4e9 release-keys" \
    BuildFingerprint=motorola/nio_retcn/nio:12/S1RN32.55-16-13/fce21a-b9f4e9:user/release-keys \
    DeviceProduct=nio_retcn
