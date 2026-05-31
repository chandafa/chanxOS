#!/usr/bin/env bash
set -euo pipefail

if [[ "${EUID}" -ne 0 ]]; then
  SUDO="sudo"
else
  SUDO=""
fi

${SUDO} apt update
${SUDO} apt install -y \
  live-build \
  debootstrap \
  xorriso \
  squashfs-tools \
  isolinux \
  syslinux-common \
  syslinux-utils \
  qemu-system-x86 \
  ovmf \
  ca-certificates \
  curl \
  git

echo "Build dependencies installed."
