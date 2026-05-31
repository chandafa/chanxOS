#!/usr/bin/env bash
set -euo pipefail
sudo lb clean --purge || true
rm -f ./*.iso ./*.img ./*.list ./*.packages ./*.buildlog chanxos-build.log || true
echo "Clean selesai."
