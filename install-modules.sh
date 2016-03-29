#!/bin/bash
#ADB=~/bin/android-sdk-linux/platform-tools/adb
export ADB=adb

#${ADB} disconnect
#${ADB} kill-server
#${ADB} connect cubie
#sleep 2

${ADB} shell mount -o remount,rw /system
${ADB} shell busybox rm -rf /system/vendor/modules/*
#${ADB} push build/android /system/vendor/modules

${ADB} push /usr/src/tablet_astar-a33/a33_linux/output/lib/modules/3.4.39/ /system/vendor/modules
${ADB} push modules_patch/gslX680new.ko /system/vendor/modules
${ADB} push modules_patch/bma250.ko /system/vendor/modules

${ADB} shell chmod 0755 /system/vendor/modules/*
${ADB} shell mount -o remount,ro /system
#${ADB} shell reboot
