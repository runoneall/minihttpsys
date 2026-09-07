#!/bin/sh
rm buildroot.tar.gz
wget https://buildroot.org/downloads/buildroot-2026.05.1.tar.gz -O buildroot.tar.gz

rm -rf buildroot
mkdir buildroot
tar -zxvf buildroot.tar.gz -C buildroot --strip-components=1
rm buildroot.tar.gz
