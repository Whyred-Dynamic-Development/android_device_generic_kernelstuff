#
# Copyright (C) 2018-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from oxygen device.
# $(call inherit-product, device/xiaomi/oxygen/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kernelstuff
PRODUCT_NAME := twrp_kernelstuff
PRODUCT_BRAND := sounddrill
PRODUCT_MODEL := kernelstuff
PRODUCT_MANUFACTURER := generic
TARGET_VENDOR := generic

PRODUCT_SYSTEM_NAME := kernelstuff
