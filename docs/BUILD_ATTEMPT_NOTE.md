# Build Attempt Note

Starter kit ini sudah disiapkan untuk build ISO dengan Debian `live-build`.

Environment ChatGPT/container yang digunakan saat menyiapkan project ini belum bisa menghasilkan ISO final karena dependency berikut tidak tersedia:

```text
live-build / lb
debootstrap
mksquashfs
xorriso
genisoimage / grub-mkrescue
qemu-system-x86_64
```

Akses `apt update` pada environment tersebut juga timeout, sehingga dependency tidak bisa di-install di sana.

Gunakan salah satu jalur berikut:

1. Build lokal di VM Debian/Ubuntu:

```bash
./scripts/install-build-deps.sh
./tools/diagnose-build-env.sh
./build.sh
```

2. Build otomatis via GitHub Actions:

```text
.github/workflows/build-iso.yml
```
