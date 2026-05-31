# chanxOS Liquid Glass UI pass

This version applies a macOS/Cutefish-inspired clean visual direction while keeping XFCE as the MVP desktop.

## Included

- LightDM lock/login screen uses chanxOS lockscreen background.
- `ChanxGlass` GTK theme layer for rounded, soft, glass-like surfaces.
- Papirus icon theme plus custom minimalist chanxOS icons.
- Plank dock centered at the bottom with a translucent glass theme.
- XFCE top panel simplified and made translucent.
- Picom autostart configuration for shadows, rounded corners, and optional blur.
- chanxOS Welcome Center rewritten as a GTK glass-card dashboard.
- Desktop icons hidden by default to keep the workspace minimal.

## Important limitation

XFCE can be styled to look clean and glassy, but it cannot perfectly reproduce Cutefish/macOS native blur everywhere. The real blur depends on compositor support, graphics driver, and VirtualBox display settings.
