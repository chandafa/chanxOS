#!/usr/bin/env bash
set -euo pipefail
ISO="${1:-chanxOS-0.1-alpha-amd64.iso}"

if [[ ! -f "$ISO" ]]; then
  echo "ISO tidak ditemukan: $ISO"
  exit 1
fi

sha256sum "$ISO" > SHA256SUMS
echo "SHA256SUMS dibuat."
