#
# Copyright 2024 The Android Open Source Project
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

# Build all of the 32 bit code, but only the vendor partition enables 64 bit.
ZYGOTE_FORCE_64 := true

# Force any prefer32 targets to be compiled as 64 bit.
IGNORE_PREFER32_ON_DEVICE := true

$(call inherit-product, device/xiaomi/topaz/aosp_topaz.mk)

PRODUCT_NAME := aosp_topaz_64_zygote
PRODUCT_MODEL := Redmi Note 12 4G
