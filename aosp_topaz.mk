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


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from topaz device
$(call inherit-product, device/xiaomi/topaz/device.mk)

# Inherit some common aosp stuff
TARGET_BOOT_ANIMATION_RES := 1080

# topaz: dont deal with vendor for now
#$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# b/113232673 STOPSHIP deal with Qualcomm stuff later
# PRODUCT_RESTRICT_VENDOR_FILES := all

PRODUCT_NAME := aosp_topaz
PRODUCT_DEVICE := topaz
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 4G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi	

ifneq (0,$(shell >/dev/null command echo "Made by @itzParsaYC with love!, based on @BaranTR1's Tree Mostly." ; echo $$?))
  $(error "Ah, you even dont have echo command? you must reinstall the whole os, this isnt not good at all.")
endif

# Checking if the tree is signed or not
ifneq (0,$(shell >/dev/null command ls itzSign.mdf ; echo $$?))
  $(error "This tree isnt signed, please use the official one.")
endif

# Creating signed enviroment
FINGERPRINT_CONTAINER := fingerprint.txt
BUILD_FINGERPRINT := $(shell cat $(FINGERPRINT_CONTAINER))

# Some extra checks for quick problem sovling...
ifneq (0,$(shell >/dev/null command cd vendor/xiaomi/topaz; echo $$?))
  $(error "BRUH Moment for real, get the vendor fast, it doesnt exists!")
endif
ifneq (0,$(shell >/dev/null command cd device/xiaomi/topaz-kernel ; echo $$?))
  $(error "BRUH Moment for real, get the kernel fast, also ghet the oss one, it doesnt exists!")
endif
ifneq (0,$(shell >/dev/null command cd device/xiaomi/sm6225-common; echo $$?))
  ifneq (0,$(shell >/dev/null command cd vendor/xiaomi/sm6225-common; echo $$?))
      $(error "BRUH MOMENT, BRO GET THE COMMON THINGS!")
  $(error "Bruh moment for real, i dont know why god put sand instead of brain in your head, you have done vendor sm6225-common but not the one in device! brainrot")
endif
