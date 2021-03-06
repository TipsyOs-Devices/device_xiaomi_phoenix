#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from phoenix device
$(call inherit-product, device/xiaomi/phoenix/device.mk)

# Inherit some Tipsy stuff.
$(call inherit-product, vendor/tipsy/config/common.mk)
$(call inherit-product, vendor/tipsy/config/gsm.mk)

# Inherit GApps
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)

# Bootanimation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Maintainer
XTENDED_MAINTAINER := GtrCraft

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := tipsy_phoenix
PRODUCT_DEVICE := phoenix
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

BUILD_FINGERPRINT := POCO/phoenixin/phoenixin:10/QKQ1.190825.002/V11.0.11.0.QGHINXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
