# chanxOS MVP Starter Kit

**chanxOS** adalah starter project untuk membuat ISO Linux custom chanxOS dengan GUI, installer, branding, dan fitur MVP sederhana.

Target awal:

- ISO bisa boot sebagai Live OS.
- Masuk desktop XFCE.
- Bisa di-install menggunakan Calamares.
- Punya branding chanxOS.
- Punya fitur unik sederhana: Welcome Center, DevPack Installer, Study Mode, Quick Commands, dan Learning Hub.

> Status: experimental / learning project. Cocok untuk tahap awal pengembangan distro, bukan untuk production.

## Struktur

```text
chanxos-mvp-starter/
├── build.sh
├── clean.sh
├── config/
│   ├── package-lists/
│   ├── includes.chroot/
│   └── hooks/
├── branding/
├── docs/
└── tools/
```


## Cara build yang disarankan

### Opsi 1 — Build lokal di VM Linux

```bash
sudo apt update
sudo apt install -y git
./scripts/install-build-deps.sh
./tools/test-scripts.sh
./tools/test-packages.sh
./tools/diagnose-build-env.sh
./build.sh
```

Output:

```text
chanxOS-0.1-alpha-amd64.iso
SHA256SUMS
```

### Opsi 2 — Build via GitHub Actions

Project ini sudah menyertakan workflow:

```text
.github/workflows/build-iso.yml
```

Upload project ke GitHub, buka tab **Actions**, lalu jalankan **Build chanxOS ISO**.

Panduan lengkap ada di:

```text
docs/BUILD_ON_GITHUB.md
```

## Cara build cepat

Gunakan VM Linux build environment. Jalankan:

```bash
sudo apt update
sudo apt install -y live-build xorriso squashfs-tools isolinux syslinux-common syslinux-utils debootstrap
chmod +x build.sh clean.sh
./build.sh
```

Output ISO biasanya bernama mirip:

```text
live-image-amd64.hybrid.iso
```

Rename menjadi:

```text
chanxOS-0.1-alpha-amd64.iso
```

## Login Live ISO

Default boot live menggunakan:

```text
username: chanx
hostname: chanxos
```

Jika password diminta pada sesi live, coba kosongkan atau gunakan user live sesuai konfigurasi chanxOS Live.

## Catatan penting

- Build ISO butuh Linux environment, internet, dan ruang disk cukup besar.
- Jalankan di VM agar aman.
- Calamares mungkin perlu konfigurasi tambahan tergantung versi upstream package yang dipakai.
- Jangan gunakan untuk mesin utama sebelum diuji berkali-kali di VM.

## Testing tanpa full build

Panduan ada di `docs/TESTING_WORKFLOW.md`. Jalankan minimal:

```bash
./tools/test-scripts.sh
./tools/diagnose-build-env.sh
```

Untuk validasi package list di build VM:

```bash
./tools/test-packages.sh
```
