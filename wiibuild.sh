#!/bin/bash

export LD_LIBRARY_PATH=H-i686-pc-linux-gnu/cross-powerpc-linux-uclibc/usr/lib

make clean ARCH=powerpc CROSS_COMPILE=H-i686-pc-linux-gnu/cross-powerpc-linux-uclibc/usr/bin/powerpc-linux-

make wii_defconfig ARCH=powerpc CROSS_COMPILE=H-i686-pc-linux-gnu/cross-powerpc-linux-uclibc/usr/bin/powerpc-linux-

make -j2 ARCH=powerpc CROSS_COMPILE=H-i686-pc-linux-gnu/cross-powerpc-linux-uclibc/usr/bin/powerpc-linux-

cp arch/powerpc/boot/zImage ./ppcboot.elf

#find -name '*.ko' -exec cp -av {} ../moduli/ \;
