#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

DISTRO="${DISTRO:-bookworm}"
ARCH="${ARCH:-amd64}"
ISO_NAME="${ISO_NAME:-chanxOS-0.1-alpha-${ARCH}.iso}"

REQUIRED_CMDS=(lb debootstrap mksquashfs xorriso isohybrid)
MISSING=()
for cmd in "${REQUIRED_CMDS[@]}"; do
  if ! command -v "$cmd" >/dev/null 2>&1; then
    MISSING+=("$cmd")
  fi
done

if [[ "${#MISSING[@]}" -gt 0 ]]; then
  echo "Dependency build belum lengkap: ${MISSING[*]}"
  echo "Jalankan:"
  echo "  ./scripts/install-build-deps.sh"
  echo "atau:"
  echo "  sudo apt install -y live-build xorriso squashfs-tools isolinux syslinux-common syslinux-utils debootstrap"
  exit 1
fi

if [[ $EUID -eq 0 && "${ALLOW_ROOT_BUILD:-0}" != "1" ]]; then
  echo "Jangan jalankan build.sh sebagai root langsung."
  echo "Pakai user biasa agar file hasil build tidak semuanya owned by root."
  echo "Untuk CI/container, gunakan: ALLOW_ROOT_BUILD=1 ./build.sh"
  exit 1
fi

if [[ $EUID -eq 0 ]]; then
  SUDO=""
else
  SUDO="sudo"
fi

echo "==> chanxOS ISO build"
echo "    Distro : ${DISTRO}"
echo "    Arch   : ${ARCH}"
echo "    Output : ${ISO_NAME}"

echo "==> Membersihkan build lama..."
${SUDO} lb clean --purge || true
rm -f ./*.iso ./*.img ./*.list ./*.packages ./*.buildlog chanxos-build.log SHA256SUMS || true

echo "==> Menyiapkan konfigurasi live-build..."
lb config \
  --mode debian \
  --distribution "${DISTRO}" \
  --architectures "${ARCH}" \
  --archive-areas "main contrib non-free non-free-firmware" \
  --binary-images iso-hybrid \
  --debian-installer live \
  --apt-recommends true \
  --apt-options "--yes -o Acquire::Retries=5 -o Acquire::http::No-Cache=true -o Acquire::https::No-Cache=true" \
  --mirror-bootstrap "http://ftp.debian.org/debian/" \
  --mirror-chroot "http://ftp.debian.org/debian/" \
  --mirror-binary "http://ftp.debian.org/debian/" \
  --firmware-binary true \
  --firmware-chroot true \
  --security false \
  --bootappend-live "boot=live components username=chanx hostname=chanxos quiet splash"

echo "==> Mulai build ISO. Proses ini bisa lama dan butuh internet stabil."
${SUDO} lb build 2>&1 | tee chanxos-build.log

if [[ -f "live-image-${ARCH}.hybrid.iso" ]]; then
  mv "live-image-${ARCH}.hybrid.iso" "${ISO_NAME}"
fi

if [[ -f "${ISO_NAME}" ]]; then
  sha256sum "${ISO_NAME}" > SHA256SUMS
  echo "==> Build selesai: ${ISO_NAME}"
  echo "==> Checksum: SHA256SUMS"
else
  echo "==> Build selesai, tetapi file ISO tidak ditemukan. Cek chanxos-build.log"
  exit 1
fi
