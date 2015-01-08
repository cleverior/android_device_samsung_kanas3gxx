# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH 						:= device/samsung/kanas3gxx

USE_CAMERA_STUB 					:= true

# inherit from the proprietary version
-include vendor/samsung/kanas3gxx/BoardConfigVendor.mk

TARGET_ARCH 						:= arm
TARGET_NO_BOOTLOADER 					:= true
TARGET_BOARD_PLATFORM 					:= sc8830
TARGET_CPU_ABI 						:= armeabi-v7a
TARGET_CPU_ABI2 					:= armeabi
TARGET_ARCH_VARIANT 					:= armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER 				:= true

TARGET_BOOTLOADER_BOARD_NAME 				:= kanas3gxx

BOARD_KERNEL_CMDLINE 					:= console=ttyS1,115200n8
BOARD_KERNEL_BASE 					:= 0x00000000
BOARD_KERNEL_PAGESIZE 					:= 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE 				:= 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE 			:= 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE 			:= 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE 			:= 0x105c0000
BOARD_FLASH_BLOCK_SIZE 					:= 131072

TARGET_PREBUILT_KERNEL 					:= $(LOCAL_PATH)/kernel

BOARD_HAS_NO_SELECT_BUTTON 				:= true

BOARD_CUSTOM_RECOVERY_KEYMAPPING 			:= ../../$(LOCAL_PATH)/recovery/recovery_keys.c
TARGET_RECOVERY_FSTAB 					:= $(LOCAL_PATH)/recovery/kanas3gxx.fstab
TARGET_RECOVERY_PIXEL_FORMAT 				:= "RGBX_8888"

# Recovery variant
#RECOVERY_VARIANT 					:= recovery
#RECOVERY_VARIANT					:= recovery-philz
#RECOVERY_VARIANT 					:= recovery-twrp
#RECOVERY_VARIANT 					:= recovery-carliv

