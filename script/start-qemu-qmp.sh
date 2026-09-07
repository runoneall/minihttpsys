#!/bin/sh

exec qemu-system-riscv64 \
	-M virt \
	-bios bios.bin \
	-kernel kernel.bin \
	-append "rootwait root=/dev/vda ro" \
	-drive file=sys.img,format=raw,if=virtio,read-only=on \
	-drive file=data.img,format=raw,if=virtio \
	-netdev user,id=net0 \
	-device virtio-net-device,netdev=net0 \
	-display none \
	-serial none \
	-chardev stdio,id=mon0 \
	-mon chardev=mon0,mode=control \
	"$@"
