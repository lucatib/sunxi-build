#!/bin/bash
ADB=adb
#${ADB} connect cubie
#sleep 2
#cd /home/xmister/Cubie
${ADB} push new_boot.img /cache/
${ADB} shell dd if=/cache/new_boot.img of=/dev/block/nandc
