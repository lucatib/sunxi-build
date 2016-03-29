#!/bin/bash

rm -f new_boot.img
rm -f Image

cp ../a33_linux/output/Image ./
cp ../a33_linux/output/lib/modules/3.4.39/nand.ko ./ramdisk

sh repack-ramdisk ramdisk/

./mkbootimg --kernel Image --ramdisk new-ramdisk.cpio.gz --base 0x40000000 -o new_boot.img
