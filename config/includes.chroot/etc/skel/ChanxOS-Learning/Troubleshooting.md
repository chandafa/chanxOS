# Troubleshooting

## Network tidak muncul

```bash
sudo systemctl restart NetworkManager
```

## Update error

```bash
sudo apt update --fix-missing
sudo dpkg --configure -a
sudo apt install -f
```

## Cek disk

```bash
lsblk
 df -h
```
