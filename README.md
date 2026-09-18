# Minimal Monochrome i3wm Setup

A distraction-free, high-contrast, timeless black-and-white tiling environment built on i3wm, Polybar, Alacritty, and Rofi.

---

## Keybinding Reference

### Window & Layout Management
| Shortcut | Action |
| :--- | :--- |
| `Mod4 + Return` | Open Alacritty terminal[cite: 1] |
| `Mod4 + Shift + Return` | Open Ranger file manager |
| `Mod4 + d` | Open Rofi application launcher |
| `Mod4 + q` | Close focused window[cite: 1] |
| `Mod4 + f` | Toggle fullscreen mode |
| `Mod4 + Shift + Space` | Toggle floating mode for window[cite: 1] |
| `Mod4 + u` | Toggle centered dropdown scratchpad |
| `Mod4 + b` / `Mod4 + v` | Split horizontal / vertical[cite: 1] |
| `Mod4 + 1-9` | Switch to workspace `1-9`[cite: 1] |
| `Mod4 + Shift + 1-9` | Move focused window to workspace `1-9`[cite: 1] |

### System & Hardware
| Shortcut | Action |
| :--- | :--- |
| `Mod4 + Shift + r` | Restart and reload i3 in-place[cite: 1] |
| `Mod4 + Shift + e` | Launch Rofi monochrome power menu |
| `Mod4 + Shift + x` | Pixelated grayscale screen lock |
| `Mod4 + Shift + p` | Open ARandR display management GUI |
| `Print` | Capture full screen to clipboard & disk |
| `Shift + Print` | Select screen region to clipboard & disk |
| `Volume / Brightness` | Adjust levels with Dunst on-screen display |

---

## Tech Stack
* **Window Manager:** `i3-gaps` / `i3wm` (X11)
* **Bar:** `polybar` (22px minimal status strip)
* **Terminal:** `alacritty` (GPU accelerated, pure monochrome)
* **Launcher:** `rofi` (Centered borderless modal)
* **Notifications:** `dunst` (High-contrast urgency alerts)
* **Compositor:** `picom` (GLX backend, vsync, subtle fades)
* **File Manager:** `ranger`
* **System Fetch:** `fastfetch`
