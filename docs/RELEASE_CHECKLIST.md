# Release Checklist

Sebelum release ISO:

- [ ] ISO boot di VirtualBox.
- [ ] ISO boot di QEMU.
- [ ] Desktop tampil normal.
- [ ] WiFi/LAN terdeteksi.
- [ ] Firefox bisa dibuka.
- [ ] Terminal bisa dibuka.
- [ ] chanx-info berjalan.
- [ ] chanx-welcome berjalan.
- [ ] chanx-devpack berjalan.
- [ ] Calamares terbuka.
- [ ] Install ke VM berhasil.
- [ ] Reboot hasil install berhasil.
- [ ] Screenshot release dibuat.
- [ ] SHA256 checksum dibuat.

Buat checksum:

```bash
sha256sum chanxOS-0.1-alpha-amd64.iso > SHA256SUMS
```
