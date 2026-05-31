# Build Guide chanxOS

## Requirement

Disarankan build di Linux VM yang cocok dengan live-build.

Minimal:

- RAM 4 GB
- Disk kosong 30 GB
- Internet stabil

Install tools:

```bash
sudo apt update
sudo apt install -y live-build xorriso squashfs-tools isolinux syslinux-common syslinux-utils debootstrap
```

## Build

```bash
chmod +x build.sh clean.sh
./build.sh
```

## Test ISO dengan QEMU

```bash
sudo apt install -y qemu-system-x86
qemu-system-x86_64 -m 4096 -cdrom chanxOS-0.1-alpha-amd64.iso -boot d
```

## Test ISO dengan VirtualBox

1. Buat VM baru.
2. Type: Linux.
3. Version: Linux 64-bit.
4. RAM: 4096 MB.
5. Attach ISO chanxOS.
6. Boot.
