#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

#Inherit from vendor
$(call inherit-product, vendor/samsung/j5lte/j5lte-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/j5-common/device-common.mk)

LOCAL_PATH := device/samsung/j5lte

# NFC
$(call inherit-product, device/samsung/msm8916-common/msm8916.mk)

# System properties
-include $(LOCAL_PATH)/system_prop.mk

#GAPPS config
GAPPS_VARIANT := pico
GAPPS_PRODUCT_PACKAGES += Youtube
GAPPS_PRODUCT_PACKAGES += GoogleDialer
GAPPS_PRODUCT_PACKAGES += Wallpapers
GAPPS_PRODUCT_PACKAGES += Chrome
GAPPS_PRODUCT_PACKAGES += CalculatorGoogle 
GAPPS_PRODUCT_PACKAGES += PrebuiltDeskClockGoogle
GAPPS_PRODUCT_PACKAGES += CalendarGooglePrebuilt
GAPPS_PRODUCT_PACKAGES += PrebuiltGmail
GAPPS_PRODUCT_PACKAGES += GoogleContacts 
GAPPS_PRODUCT_PACKAGES += Messaging 
GAPPS_PRODUCT_PACKAGES += TrichromeLibraryGoogle
$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)

# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
