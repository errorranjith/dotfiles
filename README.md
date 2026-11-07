# Monochrome i3wm Dotfiles

A timeless, monochrome Linux desktop configuration built around i3wm, Polybar, Rofi, Kitty and lightweight X11 utilities.

Designed for a clean, keyboard-driven desktop.

## Desktop Components

| Component             | Application      |
| --------------------- | ---------------- |
| Window manager        | i3wm (X11)       |
| Status bar            | Polybar          |
| Terminal              | Kitty            |
| Application launcher  | Rofi             |
| File manager          | Yazi             |
| Notifications         | Dunst            |
| Compositor            | Picom            |
| Clipboard manager     | CopyQ            |
| Screenshots           | Flameshot, Scrot |
| Display configuration | ARandR           |
| Wallpaper utility     | feh              |
| System information    | Fastfetch        |

Additional configurations are included for Alacritty, Ranger, mpv, Zathura and GTK.

## Keybindings

The Windows key (`Mod4`) is the main modifier.

### Applications

| Shortcut                | Action                   |
| ----------------------- | ------------------------ |
| `Mod4 + Return`         | Open Kitty               |
| `Mod4 + Shift + Return` | Open Yazi in Kitty       |
| `Mod4 + d`              | Application launcher     |
| `Mod4 + z`              | Open Brave Browser       |
| `Mod4 + c`              | Toggle CopyQ             |
| `Mod4 + Shift + t`      | Open clock widget        |
| `Mod4 + u`              | Toggle dropdown terminal |

### Window Management

| Shortcut                 | Action                                   |
| ------------------------ | ---------------------------------------- |
| `Mod4 + q`               | Close focused window                     |
| `Mod4 + f`               | Toggle fullscreen                        |
| `Mod4 + b`               | Horizontal split                         |
| `Mod4 + v`               | Vertical split                           |
| `Mod4 + Space`           | Toggle focus between tiling and floating |
| `Mod4 + Shift + Space`   | Toggle floating                          |
| `Mod4 + h/j/k/l`         | Focus left/down/up/right                 |
| `Mod4 + Shift + h/j/k/l` | Move window                              |
| `Mod4 + 1-0`             | Switch workspaces                        |
| `Mod4 + Shift + 1-0`     | Move window to workspace                 |

### System Controls

| Shortcut               | Action                  |
| ---------------------- | ----------------------- |
| `Print`                | Open Flameshot          |
| `Mod4 + Shift + Print` | Capture selected region |
| `Mod4 + Shift + x`     | Lock screen             |
| `Mod4 + Shift + p`     | Open ARandR             |
| `Mod4 + Shift + w`     | Wi-Fi menu              |
| `Mod4 + Shift + b`     | Bluetooth menu          |
| `Mod4 + Shift + e`     | Power menu              |
| `Mod4 + Shift + c`     | Reload i3 configuration |
| `Mod4 + Shift + r`     | Restart i3              |
| Volume keys            | Adjust volume           |
| Brightness keys        | Adjust brightness       |

## Repository Structure

- `.config/i3/` - Window manager configuration and scripts
- `.config/polybar/` - Status bar configuration
- `.config/rofi/` - Application launcher and menus
- `.config/picom/` - Compositor settings
- `.config/dunst/` - Notification settings
- `.config/kitty/` - Terminal settings
- `.config/yazi/` - File manager settings
- `.config/mpv/` - Media player settings
- `.config/ranger/` - Ranger configuration
- `.config/fastfetch/` - System information display
- `.config/gtk-3.0/` and `.config/gtk-4.0/` - GTK settings
- `.config/zathura/` - PDF viewer settings

## Dependencies

### Core applications

- i3wm
- Polybar
- Kitty
- Rofi
- Yazi
- Picom
- Dunst
- CopyQ

### System utilities

- NetworkManager and nm-applet
- BlueZ and Blueman
- Feh
- Flameshot
- Scrot
- Xclip
- ARandR
- Brightnessctl
- Pulseaudio utilities (`pactl`)
- Autotiling
- TTY Clock
- X11 utilities
- Bash and standard command-line utilities

Some applications may need to be installed separately depending on your Linux distribution.

## Installation

### 1. Install dependencies

Install the required applications and utilities using your distribution's package manager.

### 2. Clone the repository

```bash
git clone https://github.com/errorranjith/dotfiles.git
cd dotfiles
```

### 3. Back up existing configurations

```bash
cp -a ~/.config ~/.config.backup
```

### 4. Copy configurations

```bash
mkdir -p ~/.config
cp -a .config/. ~/.config/
```

### 5. Make scripts executable

```bash
find ~/.config/i3/scripts ~/.config/polybar \
  -type f -name '*.sh' -exec chmod +x {} \;
```

### 6. Review machine-specific settings

Review configuration paths, display settings, optional applications and hardware-specific settings before starting i3.

### 7. Start i3

Log into an i3 X11 session.

## Notes

- Designed primarily for Linux distributions running X11.
- Review configurations before replacing existing files.
- Some keybindings require optional applications.
- Hardware-specific settings may need adjustment.
- Personal wallpaper configuration is intentionally excluded.
- Back up existing configurations before applying changes.

## License

Feel free to use, modify and adapt these configurations for your own Linux desktop.
