# chanxOS Testing Workflow

Gunakan test bertingkat agar tidak perlu build ISO setiap kali edit.

## 1. Test script dan permission

```bash
./tools/test-scripts.sh
```

## 2. Test package list

Jalankan di Debian 12/bookworm build VM:

```bash
./tools/test-packages.sh
```

## 3. Diagnose build environment

```bash
./tools/diagnose-build-env.sh
```

## 4. Build ISO

```bash
./build.sh
```

## 5. Test boot ISO

```bash
./tools/test-qemu.sh chanxOS-0.1-alpha-amd64.iso
```

## Catatan

- Jangan full build untuk setiap perubahan kecil.
- Untuk edit command `chanx-*`, cukup jalankan `test-scripts.sh` dulu.
- Untuk edit package list, jalankan `test-packages.sh` sebelum build.
- Untuk edit Calamares/installer, tetap perlu build ISO dan test install di VM.
