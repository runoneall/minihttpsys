#!/bin/sh

BASE_URL=https://github.com/rvhosting/minihttpsys/releases/latest/download
wget ${BASE_URL}/bios.bin
wget ${BASE_URL}/kernel.bin
wget ${BASE_URL}/sys.img
wget ${BASE_URL}/data.img
