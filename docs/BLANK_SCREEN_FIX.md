# Blank screen fix

The smaller ISO previously used `--apt-recommends false`, but XFCE's `xorg`
stack can be installed through recommendations on Debian. That can make the
live system boot into a black screen because LightDM/XFCE has no complete X
server stack.

Fixes added:

- Explicit Xorg packages:
  - `xorg`
  - `xserver-xorg`
  - `xserver-xorg-video-all`
  - `xserver-xorg-input-all`
  - `dbus-x11`
- LightDM autologin into XFCE live session.
- Safer Picom autostart so compositor failure does not block login.
- Cleaned boot menu layout.
