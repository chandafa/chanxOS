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

Linux berbasis Debian 12 dengan tampilan *Liquid Glass* — bersih, ringan, dan penuh fitur unik.

[![Status](https://img.shields.io/badge/status-alpha-orange?style=flat-square)](.)
[![Base](https://img.shields.io/badge/base-Debian%2012%20Bookworm-red?style=flat-square&logo=debian)](.)
[![Desktop](https://img.shields.io/badge/desktop-XFCE%204-4a9eda?style=flat-square)](.)
[![License](https://img.shields.io/badge/license-MIT-22bb66?style=flat-square)](.)
[![Arch](https://img.shields.io/badge/arch-amd64-888?style=flat-square)](.)

</div>

---

## Tentang chanxOS

**chanxOS** adalah distribusi Linux custom berbasis Debian 12 Bookworm, didesain dengan filosofi *Liquid Glass* — jendela buram, panel transparan, efek blur, sudut rounded, dan bayangan halus yang menyatu secara harmonis.

Dibangun untuk:
- 🎓 Pelajar & mahasiswa yang baru belajar Linux
- 💻 Developer yang butuh environment coding yang bersih
- 🧪 Pengembang OS yang ingin belajar membuat distro sendiri

> **Project edukasi / eksperimental.** Cocok untuk belajar, bukan server production.

---

## ✨ Fitur Unik chanxOS

Fitur-fitur berikut **tidak tersedia secara default di Ubuntu, Fedora, atau Mint**:

### 1. Glass Manager (`chanx-glass` / `Super+G`)
Toggle level efek visual tanpa logout atau reboot:
| Level | Nama | Efek |
|---|---|---|
| 0 | Off | Tanpa compositor — performa maksimal |
| 1 | Minimal | Shadow saja — cocok untuk VM lama |
| 2 | Standard | Rounded corners + fading *(default)* |
| 3 | Full Glass | Blur `dual_kawase` + semua efek — butuh GPU |

### 2. Theme Switcher (`chanx-theme`)
Ganti mode tampilan instan tanpa logout:
- **Light Glass** — terang, segar (default siang hari)
- **Dark Glass** — gelap, elegan (default malam)
- **Auto** — otomatis ikuti jam sistem (07:00–19:00 = light)

### 3. Focus Mode (`chanx-focus` / `Super+F`)
Satu perintah untuk meminimalisir gangguan:
- Sembunyikan panel XFCE
- Pause semua notifikasi sistem
- Set desktop ke warna solid gelap (distraction-free)
- Toggle kembali kapan saja

### 4. HUD Overlay (`chanx-hud` / `Super+H`)
Overlay informasi real-time langsung di atas wallpaper (via Conky):
- CPU usage, RAM, disk, network up/down
- Jam dan tanggal live
- Transparan, tidak menghalangi apapun

### 5. QuickNote (`chanx-quicknote` / `Super+N`)
Catatan cepat tersimpan permanen di `~/.config/chanxos/notes/quicknote.txt`:
```bash
chanx-quicknote add "ide proyek baru"   # tambah dari terminal
chanx-quicknote list                    # lihat semua catatan
chanx-quicknote                         # buka di editor GUI
```

### 6. Snap (`chanx-snap` / `Print`)
Screenshot dengan shortcut pintar:
| Shortcut | Mode |
|---|---|
| `Print` | Area pilih (klik-drag) |
| `Alt+Print` | Window aktif |
| `Shift+Print` | Layar penuh |
| `Super+Snap` | GUI mode picker |

### 7. DevPack Installer (`chanx-devpack`)
Install paket developer dengan satu klik:
- **Web Developer** — Git, Node.js, npm, build-essential
- **Laravel / PHP** — PHP, Composer, MariaDB client
- **Rust Developer** — Rustup, Cargo, build tools
- **Python Dev** — Python 3, pip, venv, dev headers
- **Student Pack** — LibreOffice, Evince, Flameshot, GParted

### 8. Study Mode (`chanx-study-mode [menit]`)
Timer Pomodoro dengan progress bar GUI dan notifikasi sistem.

---

## 🖥️ Spesifikasi Sistem

| Komponen | Detail |
|---|---|
| Base | Debian 12 Bookworm |
| Desktop | XFCE 4 |
| Window Manager | XFWM4 (compositing built-in) |
| Compositor | Picom — GLX blur / xrender fallback |
| Theme | ChanxGlass (GTK2/3 custom) |
| Icon Theme | Papirus |
| Dock | Plank (ChanxGlass theme) |
| Font | Inter + DejaVu Sans Mono |
| Terminal | XFCE4-Terminal (dark translucent) |
| File Manager | Thunar + Volman |
| Browser | Firefox ESR |
| Login Manager | LightDM GTK |
| Panel | XFCE4-Panel (frosted glass, top bar) |

---

## 🔐 Login Live Session

| Field | Nilai |
|---|---|
| **Username** | `chanx` |
| **Password** | `live` |
| **Hostname** | `chanxos` |

> LightDM dikonfigurasi untuk **autologin** — kamu langsung masuk desktop.
> Password `live` diperlukan untuk dialog `sudo` atau screen lock.

---

## ⌨️ Keyboard Shortcuts

| Shortcut | Fungsi |
|---|---|
| `Super+E` | Buka Thunar (file manager) |
| `Super+T` | Buka Terminal |
| `Super+W` | Buka Welcome Center |
| `Super+F` | Toggle Focus Mode |
| `Super+G` | Buka Glass Manager |
| `Super+H` | Toggle HUD Overlay |
| `Super+N` | Buka QuickNote |
| `Print` | Screenshot area |
| `Alt+Print` | Screenshot window aktif |
| `Shift+Print` | Screenshot layar penuh |
| `Super+Left/Right` | Tile window kiri/kanan |
| `Super+Up` | Maximize window |
| `Super+D` | Show desktop |

---

## 🚀 Cara Build

### Prasyarat

| Item | Kebutuhan |
|---|---|
| OS | Debian 12 / Ubuntu 22.04+ (atau VM) |
| RAM | Minimal 2 GB (disarankan 4 GB) |
| Disk | Minimal 20 GB free |
| Network | Koneksi internet stabil |

### Build Lokal

```bash
# 1. Install dependensi
sudo apt update
sudo apt install -y live-build debootstrap xorriso squashfs-tools \
  isolinux syslinux-common syslinux-utils git openssl

# 2. Clone / extract project
cd chanxOS

# 3. Beri izin eksekusi
chmod +x build.sh clean.sh
chmod +x config/hooks/normal/*.hook.chroot
chmod +x config/hooks/normal/*.hook.binary
chmod +x config/includes.chroot/usr/local/bin/chanx-*

# 4. Build
ALLOW_ROOT_BUILD=1 ./build.sh
```

Output:
```
chanxOS-0.1-alpha-amd64.iso
SHA256SUMS
```

### Build via GitHub Actions

```
.github/workflows/build-iso.yml
```

1. Upload ke GitHub
2. Tab **Actions** → **Build chanxOS ISO** → **Run workflow**
3. ISO tersedia di **Releases** setelah ~30–60 menit

> Panduan lengkap: `docs/BUILD_ON_GITHUB.md`

---

## 🧰 Semua Perintah chanxOS

| Perintah | Alias | Fungsi |
|---|---|---|
| `chanx-info` | `cinfo` | Info sistem (neofetch-style) |
| `chanx-update` | `cupdate` | Update semua paket |
| `chanx-clean` | `cclean` | Bersihkan cache |
| `chanx-devpack` | `cdev` | Install paket developer |
| `chanx-study-mode [mnt]` | `cstudy` | Timer Pomodoro |
| `chanx-focus` | `cfocus` | Toggle focus mode |
| `chanx-glass [0-3]` | `cglass` | Atur level efek glass |
| `chanx-theme [light\|dark\|auto]` | `ctheme` | Ganti mode tampilan |
| `chanx-hud [on\|off]` | `chud` | Toggle HUD overlay |
| `chanx-snap [full\|window\|area]` | `csnap` | Screenshot |
| `chanx-quicknote` | `cnote` | Catatan cepat |
| `chanx-install` | `cinstall` | Buka installer |
| `chanx-welcome` | — | Welcome Center |

---

## 📁 Struktur Project

```
chanxOS/
├── build.sh                          ← Build utama
├── clean.sh                          ← Bersihkan build
├── config/
│   ├── binary                        ← LB_MKSQUASHFS_OPTIONS
│   ├── bootloaders/
│   │   ├── grub-efi/config.cfg       ← GRUB menu (UEFI)
│   │   └── isolinux/menu.cfg         ← ISOLINUX menu (BIOS)
│   ├── hooks/normal/
│   │   ├── 0050-*.hook.chroot        ← Set user chanx / password live
│   │   ├── 0100-*.hook.chroot        ← Setup sistem & branding
│   │   └── 9000-*.hook.binary        ← Patch teks Debian → chanxOS
│   ├── includes.chroot/
│   │   ├── etc/
│   │   │   ├── lightdm/              ← Autologin config
│   │   │   ├── profile.d/chanxos.sh  ← Aliases & env
│   │   │   ├── skel/                 ← Template home user
│   │   │   └── os-release            ← chanxOS identity
│   │   └── usr/
│   │       ├── local/bin/chanx-*     ← Semua tools (12 tools)
│   │       └── share/themes/ChanxGlass/  ← GTK2/3 theme
│   └── package-lists/
│       ├── 00-core.list.chroot       ← Kernel, openssl, network
│       ├── 10-desktop-xfce.list.chroot  ← XFCE4, picom, plank
│       ├── 20-apps.list.chroot       ← Firefox, mousepad, evince
│       ├── 30-devtools.list.chroot   ← git, python3, nano
│       ├── 40-chanxos-features.list.chroot ← zenity, notify-bin
│       └── 50-installer-calamares.list.chroot
├── branding/                         ← Logo, wallpaper (SVG+PNG)
├── docs/                             ← Dokumentasi
└── tools/                            ← Test & diagnose scripts
```

---

## 🗺️ Roadmap

- [ ] Konfigurasi Calamares installer lengkap
- [ ] chanx-settings — Settings Center GUI terpadu
- [ ] Dark Glass GTK theme variant terpisah
- [ ] chanx-glass level 4: Acrylic/Mica effect
- [ ] Dukungan arm64
- [ ] chanx-hud tema custom (font, posisi, warna)
- [ ] Wallpaper engine terintegrasi
- [ ] chanxOS Store (GUI app installer berbasis apt)

---

## 📄 Lisensi

MIT License — bebas digunakan, dimodifikasi, dan didistribusikan.

---

<div align="center">

**chanxOS Project** · dibuat dengan ☕ dan semangat belajar

*"Build your own OS, understand your own world."*

</div>
