#!/bin/sh

cp ${BINARIES_DIR}/rootfs.ext4 ${BINARIES_DIR}/sys.img

rm ${BINARIES_DIR}/*.elf
rm ${BINARIES_DIR}/rootfs.*
rm ${BINARIES_DIR}/fw_dynamic.bin

mv ${BINARIES_DIR}/fw_jump.bin ${BINARIES_DIR}/bios.bin
mv ${BINARIES_DIR}/Image ${BINARIES_DIR}/kernel.bin

${HOST_DIR}/sbin/e2fsck -fy ${BINARIES_DIR}/sys.img
${HOST_DIR}/sbin/resize2fs -M ${BINARIES_DIR}/sys.img

truncate -s 16M ${BINARIES_DIR}/data.img
${HOST_DIR}/sbin/mkfs.ext4 -F -O ^has_journal ${BINARIES_DIR}/data.img
