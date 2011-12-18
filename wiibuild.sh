#!/bin/bash

export LD_LIBRARY_PATH=H-x86_64-pc-linux-gnu/cross-powerpc-linux-uclibc/usr/lib

make wii_defconfig ARCH=powerpc CROSS_COMPILE=H-x86_64-pc-linux-gnu/cross-powerpc-linux-uclibc/usr/bin/powerpc-linux-

make -j2 ARCH=powerpc CROSS_COMPILE=H-x86_64-pc-linux-gnu/cross-powerpc-linux-uclibc/usr/bin/powerpc-linux-

cp arch/powerpc/boot/zImage ./ppcboot.elf

#find -name '*.ko' -exec cp -av {} ../moduli/ \;
