# Build chanxOS ISO via GitHub Actions

Cara ini cocok kalau laptop belum siap build ISO atau dependency `live-build` bermasalah.

## Langkah

1. Buat repository baru di GitHub, misalnya `chanxos`.
2. Upload semua isi folder `chanxos-mvp-starter` ke repository tersebut.
3. Buka tab **Actions**.
4. Pilih workflow **Build chanxOS ISO**.
5. Klik **Run workflow**.
6. Setelah selesai, download artifact bernama:

```text
chanxOS-0.1-alpha-amd64
```

Isi artifact:

```text
chanxOS-0.1-alpha-amd64.iso
SHA256SUMS
chanxos-build.log
```

## Catatan

- Build bisa gagal kalau mirror Debian sedang lambat atau package berubah.
- Jika gagal, buka `chanxos-build.log` di artifact/log Actions.
- Untuk versi awal, test ISO dulu di VirtualBox/QEMU, jangan langsung install ke laptop utama.
