#!/usr/bin/env sh
sudo mount --bind ~/void-glibc ~/void-glibc
sudo cp -L /etc/resolv.conf ~/void-glibc/etc/resolv.conf
sudo mount --rbind /proc ~/void-glibc/proc
sudo mount --rbind /sys ~/void-glibc/sys
sudo mount --rbind /dev ~/void-glibc/dev
sudo mount --rbind /run ~/void-glibc/run
sudo mount --rbind /tmp ~/void-glibc/tmp
