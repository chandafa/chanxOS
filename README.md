<div align="center">

```
  ██████╗██╗  ██╗ █████╗ ███╗  ██╗██╗  ██╗ ██████╗ ███████╗
 ██╔════╝██║  ██║██╔══██╗████╗ ██║╚██╗██╔╝██╔═══██╗██╔════╝
 ██║     ███████║███████║██╔██╗██║ ╚███╔╝ ██║   ██║███████╗
 ██║     ██╔══██║██╔══██║██║╚████║ ██╔██╗ ██║   ██║╚════██║
 ╚██████╗██║  ██║██║  ██║██║ ╚███║██╔╝╚██╗╚██████╔╝███████║
  ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚══╝╚═╝  ╚═╝╚═════╝ ╚══════╝
```

**chanxOS 0.1 Alpha  ·  Codename: Glass Fox**

Linux berbasis Debian dengan tampilan *Liquid Glass* — bersih, ringan, dan ramah developer.

![Status](https://img.shields.io/badge/status-alpha-orange?style=flat-square)
![Base](https://img.shields.io/badge/base-Debian%2012%20Bookworm-red?style=flat-square&logo=debian)
![Desktop](https://img.shields.io/badge/desktop-XFCE%204-blue?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
![Arch](https://img.shields.io/badge/arch-amd64-lightgrey?style=flat-square)

</div>

---

## Tentang chanxOS

**chanxOS** adalah distribusi Linux custom berbasis Debian 12 Bookworm dengan identitas visual *Liquid Glass* — terinspirasi dari estetika macOS dan CuteFish OS, namun tetap ringan dan berjalan di atas XFCE 4.

Dibangun untuk:
- 🎓 Pelajar & mahasiswa yang baru belajar Linux
- 💻 Developer yang butuh lingkungan coding yang bersih
- 🧪 Pengembang OS yang ingin belajar membuat distro sendiri

> **Ini adalah project edukasi / eksperimental.** Cocok untuk belajar, bukan untuk server production.

---

## ✨ Fitur Unggulan

### Liquid Glass UI
Efek *frosted glass* di seluruh antarmuka — window blur, panel transparan, rounded corners, dan shadow yang halus. Semua dirender oleh Picom compositor dengan backend GLX (atau xrender sebagai fallback untuk VM).

### chanx-glass  *(Fitur Unik)*
Toggle level efek visual langsung dari desktop atau terminal:
```
Level 0 — Off        (tanpa compositor, performa maksimal)
Level 1 — Minimal    (shadow saja, cocok untuk VM)
Level 2 — Standard   (rounded + fading, default)
Level 3 — Full Glass (blur penuh + semua efek, butuh GPU)
```

### chanx-theme  *(Fitur Unik)*
Ganti mode tampilan tanpa logout:
```
Light Glass  — terang, segar (default siang)
Dark Glass   — gelap, elegan (default malam)
Auto         — otomatis ikuti waktu sistem (07:00–19:00 = light)
```

### chanxOS Welcome Center
Pusat kontrol yang muncul otomatis saat login pertama. Akses semua fitur utama dari satu jendela.

### DevPack Installer
Install paket developer hanya dengan satu klik:
- **Web Developer** — Git, Node.js, npm, build-essential
- **Laravel / PHP** — PHP, Composer, MariaDB client
- **Rust Developer** — Rustup, Cargo, build tools
- **Python Dev** — Python 3, pip, venv, dev headers
- **Student Pack** — LibreOffice, Evince, Flameshot, GParted

### Study Mode
Timer Pomodoro bawaan dengan progress bar. Jalankan `chanx-study-mode 25` untuk sesi fokus 25 menit.

---

## 🖥️ Tampilan Sistem

| Komponen       | Detail                              |
|----------------|-------------------------------------|
| Base           | Debian 12 Bookworm                  |
| Desktop        | XFCE 4                              |
| Window Manager | XFWM4 + Picom (Liquid Glass)        |
| Theme          | ChanxGlass (custom GTK2/3)          |
| Icon Theme     | Papirus                             |
| Dock           | Plank (ChanxGlass theme)            |
| Font           | Inter + DejaVu Sans Mono            |
| Compositor     | Picom (GLX blur / xrender fallback) |
| Terminal       | XFCE4-Terminal (dark translucent)   |
| File Manager   | Thunar                              |
| Browser        | Firefox ESR                         |
| Greeter        | LightDM GTK                         |

---

## 🔐 Login Live Session

Saat menjalankan chanxOS dari ISO (Live Mode):

| Field      | Value      |
|------------|------------|
| **Username** | `chanx`  |
| **Password** | `live`   |
| **Hostname** | `chanxos`|

> LightDM dikonfigurasi untuk **autologin** — kamu langsung masuk desktop tanpa perlu mengetik password. Password `live` diperlukan jika ada dialog sudo atau screen lock.

---

## 🚀 Cara Build

### Prasyarat

- Linux (Debian 12 / Ubuntu 22.04+) — bisa di VM
- RAM minimal 2 GB, disk minimal 20 GB
- Koneksi internet stabil

### Opsi 1 — Build Lokal

```bash
# Install dependensi build
sudo apt update
sudo apt install -y live-build debootstrap xorriso squashfs-tools \
  isolinux syslinux-common syslinux-utils git

# Clone / extract project
cd chanxOS

# Siapkan dependensi tambahan
chmod +x scripts/install-build-deps.sh
./scripts/install-build-deps.sh

# Validasi (opsional tapi disarankan)
./tools/test-scripts.sh
./tools/diagnose-build-env.sh

# Build!
ALLOW_ROOT_BUILD=1 ./build.sh
```

Output:
```
chanxOS-0.1-alpha-amd64.iso
SHA256SUMS
```

### Opsi 2 — Build via GitHub Actions

Project sudah dilengkapi workflow otomatis:

```
.github/workflows/build-iso.yml
```

1. Upload project ke GitHub (repo publik atau privat)
2. Buka tab **Actions**
3. Pilih **Build chanxOS ISO**
4. Klik **Run workflow**

ISO akan tersedia di **Releases** setelah build selesai (~30–60 menit).

> Panduan lengkap: `docs/BUILD_ON_GITHUB.md`

---

## 🧰 Perintah Tersedia

Setelah login ke chanxOS, perintah berikut tersedia di terminal:

| Perintah | Fungsi |
|---|---|
| `chanx-info` | Informasi sistem (neofetch-style) |
| `chanx-update` | Update semua paket |
| `chanx-devpack` | Install paket developer |
| `chanx-study-mode [menit]` | Timer fokus Pomodoro |
| `chanx-clean` | Bersihkan cache dan paket orphan |
| `chanx-glass [0-3]` | Atur level efek liquid glass |
| `chanx-theme [light\|dark\|auto]` | Ganti mode tampilan |
| `chanx-install` | Buka installer chanxOS |
| `chanx-welcome` | Buka Welcome Center |

**Alias singkat:**
```bash
cinfo     # chanx-info
cupdate   # chanx-update
cdev      # chanx-devpack
cglass    # chanx-glass
ctheme    # chanx-theme
cinstall  # chanx-install
```

---

## 📁 Struktur Project

```
chanxOS/
├── build.sh                        ← Script build utama
├── clean.sh                        ← Bersihkan hasil build
├── config/
│   ├── binary                      ← Opsi squashfs (LB_MKSQUASHFS_OPTIONS)
│   ├── bootloaders/
│   │   ├── grub-efi/               ← Konfigurasi GRUB (UEFI)
│   │   │   ├── config.cfg
│   │   │   └── splash.png
│   │   └── isolinux/               ← Konfigurasi ISOLINUX (BIOS)
│   │       ├── isolinux.cfg
│   │       ├── menu.cfg
│   │       ├── stdmenu.cfg
│   │       └── splash.png
│   ├── hooks/normal/
│   │   ├── 0050-chanxos-user-password.hook.chroot   ← Set user chanx/live
│   │   ├── 0100-chanxos-setup.hook.chroot           ← Setup sistem
│   │   └── 9000-chanxos-boot-branding.hook.binary   ← Branding ISO
│   ├── includes.chroot/
│   │   ├── etc/
│   │   │   ├── lightdm/            ← Autologin config
│   │   │   ├── skel/               ← Template home user
│   │   │   └── os-release          ← Identitas OS
│   │   └── usr/
│   │       ├── local/bin/chanx-*   ← Semua tools chanxOS
│   │       └── share/themes/ChanxGlass/   ← GTK2/3 theme
│   └── package-lists/
│       ├── 00-core.list.chroot
│       ├── 10-desktop-xfce.list.chroot
│       ├── 20-apps.list.chroot
│       ├── 30-devtools.list.chroot
│       ├── 40-chanxos-features.list.chroot
│       └── 50-installer-calamares.list.chroot
├── branding/                       ← Logo, wallpaper, splash (SVG + PNG)
├── docs/                           ← Dokumentasi tambahan
│   ├── BUILD_GUIDE.md
│   ├── BUILD_ON_GITHUB.md
│   └── ROADMAP.md
├── scripts/
│   └── install-build-deps.sh       ← Install dependensi build
└── tools/
    ├── diagnose-build-env.sh
    ├── test-scripts.sh
    └── test-packages.sh
```

---

## 🧪 Testing Tanpa Full Build

Untuk memvalidasi project tanpa menjalankan build lengkap:

```bash
# Cek semua script ada dan bisa dieksekusi
./tools/test-scripts.sh

# Cek environment build tersedia
./tools/diagnose-build-env.sh

# Validasi package list (butuh Debian 12 / Ubuntu)
./tools/test-packages.sh
```

Untuk test ISO di QEMU:
```bash
./tools/test-qemu.sh chanxOS-0.1-alpha-amd64.iso
```

---

## 📋 Catatan Penting

- Build ISO butuh environment Linux, koneksi internet, dan ≥20 GB ruang disk.
- Selalu test di VM sebelum install ke mesin fisik.
- Calamares membutuhkan konfigurasi tambahan untuk instalasi penuh — lihat `docs/BUILD_GUIDE.md`.
- Efek blur penuh (`chanx-glass 3`) membutuhkan GPU dengan dukungan OpenGL / GLX. Di VM, gunakan level 1 atau 2.

---

## 🗺️ Roadmap

- [ ] Konfigurasi Calamares installer yang lengkap
- [ ] Custom GRUB splash yang dirender via Python/Pillow
- [ ] chanx-glass level 4: Acrylic-style blur (mica effect)
- [ ] chanx-update GUI (progress window)
- [ ] Dukungan arm64
- [ ] Dark Glass GTK theme variant terpisah
- [ ] chanxOS Settings Center (GUI terpadu)

Lihat: `docs/ROADMAP.md`

---

## 📄 Lisensi

MIT License — bebas digunakan, dimodifikasi, dan didistribusikan.

---

<div align="center">

**chanxOS Project**  ·  dibuat dengan ☕ dan semangat belajar

*"Build your own OS, understand your own world."*

</div>
