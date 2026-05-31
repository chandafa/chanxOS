# chanxOS rebrand verification

## Goal

Remove visible upstream desktop branding from the boot menu, desktop, lock screen, installer launcher, and default user experience.

## Rebranded areas

- BIOS boot menu title and labels are patched to `chanxOS`.
- GRUB EFI boot menu labels are patched to `chanxOS`.
- Boot splash image is custom `chanxOS`.
- Plymouth loading screen has a custom `chanxOS` logo.
- LightDM login and lock screen uses `lockscreen.svg` and `ChanxGlass`.
- XFCE defaults use `ChanxGlass`, Papirus icons, Inter font, centered Plank dock, and hidden desktop clutter.
- Installer launcher is renamed to `Install chanxOS`.
- Welcome Center uses a custom liquid glass card UI.
- `/etc/os-release`, `/etc/issue`, and `/etc/motd` are branded as `chanxOS`.

## Internal technical names

Some upstream package/build identifiers must remain because the ISO is still built from Linux packages and live-build internals. Examples include package names, repository URLs, and installer executable names. These are not meant to appear as the visible product identity.
