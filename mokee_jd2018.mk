#
# Copyright (C) 2019 The Mokee Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from jd2018 device
$(call inherit-product, device/lenovo/jd2018/device.mk)

# Inherit some common Mokee stuff.
$(call inherit-product, vendor/mokee/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := mokee_jd2018
PRODUCT_DEVICE := jd2018
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo L78011
PRODUCT_MANUFACTURER := Lenovo

BUILD_FINGERPRINT := "Lenovo/jd2018/jd2018:9/PKQ1.181218.001/10.5.254_190404:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jd2018-user 9 PKQ1.181218.001 10.5.254_190404 release-keys" \
    PRODUCT_NAME="jd2018" \
    TARGET_DEVICE="jd2018"

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
