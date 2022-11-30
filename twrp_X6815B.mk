#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Infinix-X6815B device
$(call inherit-product, device/infinix/X6815B/device.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_RELEASE_NAME:= Infinix-X6815B
PRODUCT_DEVICE := X6815B
PRODUCT_NAME := twrp_X6815B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Zero 5G
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Infinix-X6815B-user 11 RP1A.200720.011 65700 release-keys"

BUILD_FINGERPRINT := Infinix/X6815B-OP/Infinix-X6815B:11/RP1A.200720.011/220823V375:user/release-keys
