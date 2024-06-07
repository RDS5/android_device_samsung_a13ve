#
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
DEVICE_PATH := device/samsung/a13ve

# Release name
PRODUCT_RELEASE_NAME := a13ve

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/lineage/config/common.mk)

# Inherit device configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_a13ve
PRODUCT_DEVICE := a13ve
PRODUCT_MODEL := SM-A137F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_PACKAGES += \
    ImsSettings \
    ImsSettings.apk \
    GoogleTetheringResOverlay \
    InProcessTetheringResOverlay \
    TetheringResOverlay \
    CarrierConfig \
    DckTimeSyncService \
    EmergencyInfo \
    GoogleFeedback \
    GoogleServicesFramework \
    SetupWizard \
    StorageManager \
    SystemUI \
    WallpaperCropper \
    org.carconnectivity.android.digitalkey.timesync \
    android.hardware.health@2.1-samsung \
    android.hardware.sensors@2.0-multihal \
    android.hardware.wifi.hostapd \
    android.hardware.wifi.supplicant \
    android.hardware.wifi@1.0-service \
    manifest_android.hardware.drm@1.4-service.clearkey \
    manifest_android.hardware.drm@1.4-service.widevine \
    manifest_vendor.samsung.hardware.security.widevine.keyprov@1.0-service \
    nxp.android.hardware.nfc@1.2-service \
    vendor.samsung.hardware.biometrics.fingerprint@3.0-service \
    vendor.samsung.hardware.hqm@1.0-manifest \
    vendor.samsung.hardware.snap-default \
    vendor.samsung.hardware.thermal@1.0-manifest \
    vendor.samsung.hardware.tlc.iccc@1.0-manifest \
    vendor.samsung.hardware.tlc.kg@1.1-manifest \
    vendor.samsung.hardware.vibrator-default \
    vendor.samsung.hardware.wifi.hostapd \
    vendor.samsung.hardware.wifi@2.0-service
