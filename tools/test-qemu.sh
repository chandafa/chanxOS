#!/usr/bin/env bash
set -euo pipefail
ISO="${1:-chanxOS-0.1-alpha-amd64.iso}"

if [[ ! -f "$ISO" ]]; then
  echo "ISO tidak ditemukan: $ISO"
  exit 1
fi

qemu-system-x86_64 -m 4096 -enable-kvm -cdrom "$ISO" -boot d
