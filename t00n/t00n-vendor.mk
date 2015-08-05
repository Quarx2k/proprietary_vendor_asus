# Copyright (C) 2014 The CyanogenMod Project
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

# This file is generated by device/asus/t00n/setup-makefiles.sh

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS := vendor/asus/t00n/overlay

PRODUCT_PACKAGES += \
    com.qualcomm.location \
    QuickBoot \
    qcrilmsgtunnel \
    shutdownlistener \
    asusCamera  \
    libtime_genoff \
    libTimeService \
    TimeService \
    libscale \
    libwvdrmengine \
    libwvdrm_L3 \
    libwvm \
    libcneapiclient \
    libWVStreamControlAPI_L3

ifeq ($(QCPATH),)
$(call inherit-product, vendor/asus/t00n/asus_blobs.mk)
else
$(call inherit-product, vendor/asus/t00n/qc_blobs.mk)
endif

