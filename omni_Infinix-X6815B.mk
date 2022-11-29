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
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Infinix-X6815B device
$(call inherit-product, device/infinix/Infinix-X6815B/device.mk)

PRODUCT_DEVICE := Infinix-X6815B
PRODUCT_NAME := omni_Infinix-X6815B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6815B
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x6815b_h772-user 11 RP1A.200720.011 65700 release-keys"

BUILD_FINGERPRINT := Infinix/X6815B-OP/Infinix-X6815B:11/RP1A.200720.011/220823V375:user/release-keys
