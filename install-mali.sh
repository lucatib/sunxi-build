#!/bin/bash
#ADB=~/bin/android-sdk-linux/platform-tools/adb
export ADB=adb

#${ADB} disconnect
#${ADB} kill-server
#${ADB} connect cubie
#sleep 2

${ADB} shell mount -o remount,rw /system

${ADB} push ./mali_patch/libMali.so    			/system/lib/
${ADB} push ./mali_patch/libion.so    			/system/lib/
${ADB} push ./mali_patch/libion_alloc.so    		/system/lib/
${ADB} push ./mali_patch/hw/gralloc.sun8i.so    	/system/lib/hw/gralloc.sun8i.so
${ADB} push ./mali_patch/egl/	                        /system/egl/

${ADB} shell mount -o remount,ro /system
#${ADB} shell reboot
