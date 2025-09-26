#
# Copyright (C) 2025 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: GPL-3.0-or-later
#

git clone --depth=1 https://github.com/alternoegraha/wwy_kernel_xiaomi_fog_rebase kernel/xiaomi/fog

export TW_DEFAULT_LANGUAGE="en"
export TARGET_DEVICE_ALT="fog, rain, wind"
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_DELETE_AROMAFM=1
export FOX_USE_NANO_EDITOR=1
export FOX_VIRTUAL_AB_DEVICE=1
export FOX_BUILD_TYPE=Beta
