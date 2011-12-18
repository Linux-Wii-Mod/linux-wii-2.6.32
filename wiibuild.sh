#!/bin/bash

export LD_LIBRARY_PATH=/home/dudu/H-x86_64-pc-linux-gnu/cross-powerpc-linux-uclibc/usr/lib

make wii_defconfig ARCH=powerpc CROSS_COMPILE=/home/dudu/H-x86_64-pc-linux-gnu/cross-powerpc-linux-uclibc/usr/bin/powerpc-linux-

make -j2 ARCH=powerpc CROSS_COMPILE=/home/dudu/H-x86_64-pc-linux-gnu/cross-powerpc-linux-uclibc/usr/bin/powerpc-linux-

find -name '*.ko' -exec cp -av {} ../moduli/ \;
