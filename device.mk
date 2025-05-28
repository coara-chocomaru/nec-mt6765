#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


LOCAL_PATH := device/nec/lavietabe10fhd2
PRODUCT_USE_DYNAMIC_PARTITIONS := false
# API levels
PRODUCT_TARGET_VNDK_VERSION := 29
PRODUCT_SHIPPING_API_LEVEL := 28


# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-impl.recovery \
    android.hardware.health@2.0-service

PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.postinstall.fstab.prefix=/system \
    ro.product.board=achilles6_row_wifi \
    ro.product.device=LAVIETabE10FHD2 \
    ro.product.manufacturer=NEC \
    ro.product.model=LAVIE Tab E 10FHD2 \
    ro.treble.enabled=true \
    ro.build.characteristics=tablet \
    persist.sys.usb.config=mtp,adb \
    ro.target.product=tablet \
    ro.build.version.security_patch=2022-05-05 \
    ro.build.version.release=10 

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
　　 update_engine \
    update_verifier \
    update_engine_sideload

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
