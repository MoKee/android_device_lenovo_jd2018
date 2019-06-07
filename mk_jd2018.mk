#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/lenovo/jd2018/device.mk)

# Inherit some common Mokee stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := mk_jd2018
PRODUCT_DEVICE := jd2018
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo Z5
PRODUCT_MANUFACTURER := Lenovo

BUILD_FINGERPRINT := "Lenovo/jd2018/jd2018:9/PKQ1.181218.001/10.5.254_190404:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jd2018-user 9 PKQ1.181218.001 10.5.254_190404 release-keys" \
    PRODUCT_NAME="jd2018" \
    TARGET_DEVICE="jd2018"

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
