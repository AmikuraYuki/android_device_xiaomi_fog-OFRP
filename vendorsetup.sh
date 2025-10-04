#!/usr/bin/env bash
#
# Copyright (C) 2025 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: GPL-3.0-or-later
#

FDEVICE="fog"

fox_get_target_device() {
    local chkdev=$(echo "$BASH_SOURCE" | grep -w "$FDEVICE")
    if [ -n "$chkdev" ]; then
        FOX_BUILD_DEVICE="$FDEVICE"
    else
        chkdev=$(set | grep BASH_ARGV | grep -w "$FDEVICE")
        [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
    fi
}

[[ -z "$1" && -z "$FOX_BUILD_DEVICE" ]] && fox_get_target_device

if [[ "$1" == "$FDEVICE" || "$FOX_BUILD_DEVICE" == "$FDEVICE" ]]; then
    export TARGET_DEVICE_ALT="rain, wind"
    export FOX_BUILD_TYPE="Stable"
    export FOX_USE_BASH_SHELL=1
    export FOX_ASH_IS_BASH=1
    export FOX_USE_TAR_BINARY=1
    export FOX_USE_SED_BINARY=1
    export FOX_USE_XZ_UTILS=1
    export FOX_DELETE_AROMAFM=1
    export FOX_USE_NANO_EDITOR=1
    export FOX_VIRTUAL_AB_DEVICE=1
else
    [[ -z "$FOX_BUILD_DEVICE" && -z "$BASH_SOURCE" ]] && echo "I: This script requires bash. Not processing the $FDEVICE $(basename $0)"
fi
