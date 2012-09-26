# Copyright (C) 2012 The CyanogenMod Project
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

TARGET_SPECIFIC_HEADER_PATH := device/pantech/msm8660-common/include

# Bootloader
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true

TARGET_NO_RADIOIMAGE := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Scorpion optimizations
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_CUSTOM_GRAPHICS := ../../../device/pantech/msm8660-common/recovery/graphics.c


COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_ROTATOR_KERNEL_FORMATS -DREFRESH_RATE=60 -DNO_QCOM_MVS
USE_OPENGL_RENDERER := true
# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

TARGET_USES_OVERLAY := true
#TARGET_HAVE_BYPASS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GENLOCK := true
TARGET_QCOM_HDMI_OUT := true
TARGET_QCOM_HDMI_RESOLUTION_AUTO := true
TARGET_FORCE_CPU_UPLOAD := false
BOARD_USES_QCOM_LIBS := true
BOARD_EGL_CFG := device/pantech/msm8660-common/configs/egl.cfg
TARGET_USES_ION := true

# Webkit
TARGET_NO_BYPASS_CROPPING := true
DYNAMIC_SHARED_LIBV8SO := true

# GPS



BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true

# to enable the GPS HAL
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm8660
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Camera
BOARD_CAMERA_USE_MM_HEAP := true
TARGET_PROVIDES_LIBLIGHTS := true


# Enable WEBGL
ENABLE_WEBGL = true
