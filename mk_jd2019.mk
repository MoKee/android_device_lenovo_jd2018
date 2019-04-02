#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/lenovo/jd2019/device.mk)

# Inherit some common Mokee stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := mk_jd2019
PRODUCT_DEVICE := jd2019
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo Z5s
PRODUCT_MANUFACTURER := Lenovo

BUILD_FINGERPRINT := "Lenovo/jd2019/jd2019:9/PKQ1.180929.001/10.7.303_190315:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jd2019-user 9 PKQ1.180929.001 10.7.303_190315 release-keys" \
    PRODUCT_NAME="jd2019" \
    TARGET_DEVICE="jd2019"

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
