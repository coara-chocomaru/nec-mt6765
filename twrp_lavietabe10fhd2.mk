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
$(call inherit-product, device/nec/lavietabe10fhd2/device.mk)

PRODUCT_DEVICE := LAVIETabE10FHD2
PRODUCT_NAME := twrp_lavietabe10fhd2
PRODUCT_BRAND := NEC
PRODUCT_MODEL := LAVIE Tab E 10FHD2
PRODUCT_MANUFACTURER := nec

PRODUCT_GMS_CLIENTID_BASE := android-nec

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_achilles6_row_wifi-user 10 QP1A.190711.020 LAVIETabE1 release-keys"

BUILD_FINGERPRINT := NEC/LAVIETabE10FHD2/LAVIETabE10FHD2:10/QP1A.190711.020/LAVIETabE10FHD2_USR_S200536_2205181109_V9.56_BMAIN_NEC:user/release-keys
