#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm6225-common
$(call inherit-product, device/xiaomi/sm6225-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/topaz/topaz-vendor.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc) \
    $(LOCAL_PATH)/audio/mixer_paths_bengal_idp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_bengal_idp_india.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Overlays
PRODUCT_PACKAGES += \
    ApertureResTopaz \
    FrameworksResTopaz \
    NotchBarKiller \
    SettingsProviderResTopaz \
    SettingsResTopaz \
    SettingsOverlayM7G \
    SettingsOverlayM7N \
    SettingsOverlayM7L \
    SettingsOverlayM7IN \
    SystemUIResTopaz \
    WifiResTopaz

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service \
    android.hardware.power@1.2.vendor

PRODUCT_COPY_FILES += \
    vendor/qcom/opensource/power/config/bengal/powerhint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
