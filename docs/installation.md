# Installation

> **Fork no oficial.** [notolac/juhradial-mx](https://github.com/notolac/juhradial-mx) — no es JuhLabs. Original: [JuhLabs/juhradial-mx](https://github.com/JuhLabs/juhradial-mx) (GPL-3). **No uses `curl | bash`.**

JuhRadial MX se construye desde el fuente. En este fork el camino recomendado es **clonar + `./install.sh` local**, o los pasos manuales. El script detecta la familia de distro (`omarchy` cuenta como Arch: `ID=omarchy`, `ID_LIKE=arch`), pide confirmación en `/dev/tty`, y usa `sudo` solo en paquetes y rutas de sistema.

<div align="center">
  <img src="https://raw.githubusercontent.com/JuhLabs/juhradial-mx/master/assets/github/githubheader.png" width="100%" alt="JuhRadial MX">
</div>

!!! note
    JuhRadial MX apunta primero a Wayland (KDE Plasma 6, GNOME, Hyprland, COSMIC, Sway, niri) y también corre en X11. En **Omarchy 4** Hyprland es Lua 0.56: ver [Compositor-Support](compositor-support.md) y [packaging/omarchy/](../packaging/omarchy/). El overlay en Wayland se coloca con **XWayland**; no lo “arregles” reescribiendo el overlay.


## Contents

- [Quick start: clone + local script](#quick-start-clone--local-script)
- [Omarchy 4](#omarchy-4)
- [What the installer does](#what-the-installer-does)
- [Requirements](#requirements)
- [Manual installation per distro](#manual-installation-per-distro)
  - [Fedora](#fedora)
  - [Ubuntu / Debian](#ubuntu-debian)
  - [Arch Linux / Omarchy](#arch-linux--omarchy)
  - [openSUSE Tumbleweed](#opensuse-tumbleweed)
  - [NixOS (flake)](#nixos-flake)
- [Build from source](#build-from-source)
- [Updating](#updating)
- [After installing](#after-installing)

## Quick start: clone + local script

```bash
git clone https://github.com/notolac/juhradial-mx.git
cd juhradial-mx
./install.sh
```

El script es interactivo: imprime distro, kernel, sesión, escritorio y si hay un receptor Logitech, y pide confirmación **antes** de cambiar nada (`read` desde `/dev/tty`).

!!! warning
    No ejecutes el instalador como `root` ni con `sudo` envolviendo todo el script. Rehúsa correr como root y pide `sudo` solo en los pasos que lo necesitan (paquetes, `/usr/local`, `/usr/share`, udev). El servicio systemd y la config viven en tu usuario.


## Omarchy 4

Este fork está pensado para Omarchy 4 + Hyprland 0.56 (config Lua). **Todavía no instales en el host** hasta que lo pidas explícitamente.

1. Dependencias con el gestor de Omarchy (paquetes en `extra/`):

```bash
omarchy pkg add rust python-pyqt6 qt6-svg python-gobject gtk4 libadwaita \
  gtk4-layer-shell python-cryptography dbus systemd-libs libevdev hidapi \
  ydotool git make base-devel
```

El `install.sh` puede usar `pacman --needed` (con el prompt que ya tiene). No es un `--noconfirm` silencioso sin confirmación previa.

2. Corre `./install.sh` como usuario `notolac` (no root). En Omarchy **no** escribe `windowrulev2` ni asume `hyprland.conf`. Copia el snippet a `~/.config/hypr/juhradial-hyprland.lua` e imprime el bloque a pegar al final de `hyprland.lua`. No edita `hyprland.lua` a ciegas.

3. Añade al final de `~/.config/hypr/hyprland.lua`:

```lua
dofile(os.getenv("HOME") .. "/.config/hypr/juhradial-hyprland.lua")
```

Snippet: [packaging/omarchy/juhradial-hyprland.lua](../packaging/omarchy/juhradial-hyprland.lua). Luego, **cuando apliques config**: `hyprctl reload` y `hyprctl configerrors`.

4. Grupo `input`: tras `usermod -aG input`, **logout o reboot**. `systemctl --user restart` **no** basta (el user manager no relee PAM).

5. udev (`hidraw` + `uinput`) y `ydotool` inyectan teclas. Es privilegio; no lo “endurezcas” sin una tarea explícita. Flow sigue apagado por defecto.

El PKGBUILD en [packaging/arch/](../packaging/arch/PKGBUILD) es experimental (metadatos del fork). **No se publica a AUR.**


## What the installer does

The installer (`install.sh`) runs as a fresh install or an in-place upgrade, depending on whether `/opt/juhradial-mx` already exists. A full run has six visible steps plus a preflight phase.

| Phase | What happens |
|-------|--------------|
| Detect | Reads `/etc/os-release` (`ID=omarchy` and `ID_LIKE=arch` count as Arch). Falls back to the package manager (`pacman`, `apt-get`, `dnf`, `zypper`). Detects Wayland vs X11, the desktop/compositor (Hyprland Lua vs legacy `.conf`), an existing install, and whether a Logitech device (USB vendor `046d`) is present. |
| 1. Dependencies | Installs the build and runtime packages for your distro family (Rust/Cargo, Python + PyQt6, GTK4/libadwaita, `gtk4-layer-shell`, HID and evdev dev headers, D-Bus/systemd dev headers, `ydotool`, `git`, `make`). |
| 2. Fetch source | Prefers the local clone that contains `install.sh`. Otherwise clones `https://github.com/notolac/juhradial-mx` into `/opt/juhradial-mx` (upgrade of a git checkout there still `fetch` + hard reset — do not do that to your fork worktree). |
| 3. Build daemon | Ensures a usable Rust toolchain (see the rustup note below), then runs `cargo build --release` in `daemon/`. |
| 4. Install files | Copies the daemon binary, overlay scripts, theme/device assets, launcher scripts, desktop entries, icons, the systemd user unit, and udev rules into place (see layout table). |
| 5. Desktop integration | Omarchy / Hyprland Lua: copies `packaging/omarchy/juhradial-hyprland.lua` and prints the `dofile` block — does **not** write `windowrulev2` or edit `hyprland.lua` blindly. GNOME still gets the cursor-helper extension. KDE, Sway, and COSMIC need no extra config. |
| 6. Enable service | Reloads the systemd user manager, enables `juhradialmx-daemon`, sets up `ydotoold` autostart, then starts (or restarts) the daemon. |

### Install layout

| Path | Contents |
|------|----------|
| `/opt/juhradial-mx` | Cloned source tree (used for updates) |
| `/usr/local/bin/juhradiald` | Compiled Rust daemon |
| `/usr/local/bin/juhradial-mx`, `/usr/local/bin/juhradial-settings` | Launcher scripts |
| `/usr/share/juhradial/` | Overlay Python, Flow module, locales, theme and device assets |
| `/usr/share/applications/` | `.desktop` entries for the app and settings |
| `~/.config/systemd/user/juhradialmx-daemon.service` | systemd user service |
| `~/.config/juhradial/` | Your `config.json` (see [Configuration](configuration.md)) |

### udev rules, uinput, and the `input` group

For non-root access to the mouse and for action injection, the installer:

- Installs `99-juhradialmx.rules` into `/etc/udev/rules.d/` and removes the older `99-logitech-hidpp.rules` if present.
- Installs `60-ydotool-uinput.rules` so the logged-in user can open `/dev/uinput` (used by both `ydotool` and the daemon's own virtual input device). Stock distros ship `/dev/uinput` as `root:root 0600`.
- Loads the `uinput` kernel module now (`modprobe uinput`) and on boot (`/etc/modules-load.d/juhradial-uinput.conf`).
- Reloads rules (`udevadm control --reload-rules` + `udevadm trigger`).
- Ensures the `input` group exists and adds your user to it (device access via hidraw/evdev comes from `GROUP="input"`).

!!! info
    If your user was just added to the `input` group, **log out and back in, or reboot**. `systemctl --user restart` / `daemon-reload` do **not** pick up the new group. Until then the daemon cannot open the device.


### ydotoold (Wayland action injection)

Keyboard-shortcut button actions and thumb-wheel actions (volume, zoom, horizontal scroll) are injected through the kernel `uinput` device via `ydotool`, which needs its background daemon `ydotoold` running. The installer prefers a packaged `ydotool.service` / `ydotoold.service` if your distro ships one; otherwise it writes a minimal `~/.config/systemd/user/ydotoold.service` and enables it so it autostarts on login. If `ydotoold` is missing, shortcut and thumb-wheel actions may not work on Wayland.

### The rustup bootstrap

The committed `Cargo.lock` is lockfile format v4 (needs Cargo >= 1.78) and the `toml_edit` dependency needs rustc >= 1.76. Several distros ship an older toolchain (Ubuntu 24.04 ships Rust 1.75), which cannot build the daemon.

The installer checks the active Cargo version and, if it is older than 1.78 or missing entirely, bootstraps the official toolchain non-interactively:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable --profile minimal
. "$HOME/.cargo/env"
```

!!! tip
    On Ubuntu 24.04 this happens automatically. If you are installing manually there and `cargo build` fails on the lockfile version, run the two commands above (or `rustup update stable`) and rebuild.


## Requirements

- A Wayland compositor (KDE Plasma 6, GNOME, Hyprland, COSMIC, Sway, niri) or X11.
- Rust toolchain (Cargo >= 1.78) to build the daemon. The installer provides this if needed.
- Python 3 with PyQt6 (overlay) and GTK4 + libadwaita via PyGObject (settings UI).
- XWayland, used for overlay window positioning on Wayland.
- A supported mouse (Logitech MX Master 4 / 3S / 3 for full HID++, or any mouse in generic evdev mode). See [FAQ](faq.md) for device coverage.

## Manual installation per distro

Each manual path is: install dependencies, clone, build the daemon, then run. To get autostart, udev rules, the `input` group, and `ydotoold` set up exactly as the local installer does, prefer `./install.sh` from a clone (never `curl | bash`) or replicate the steps in [What the installer does](#what-the-installer-does).

### Fedora

Family also covers RHEL, CentOS Stream, Rocky, AlmaLinux, Nobara, Ultramarine.

```bash
sudo dnf install -y \
    rust cargo \
    python3 python3-pip \
    python3-pyqt6 qt6-qtsvg \
    python3-gobject gtk4 libadwaita \
    gtk4-layer-shell \
    python3-cryptography \
    dbus-devel systemd-devel \
    libevdev-devel hidapi-devel \
    ydotool \
    git make
```

### Ubuntu / Debian

Family also covers Linux Mint, Pop!_OS, elementary, Kali, Zorin, KDE neon, MX Linux.

```bash
sudo apt-get update
sudo apt-get install -y \
    rustc cargo \
    python3 python3-pip python3-venv \
    python3-pyqt6 python3-pyqt6.qtsvg \
    python3-gi python3-gi-cairo gir1.2-gtk-4.0 gir1.2-adw-1 \
    python3-cryptography \
    libdbus-1-dev libsystemd-dev \
    libevdev-dev libhidapi-dev \
    ydotool \
    git make build-essential

# Optional: layer-shell support where the package exists
sudo apt-get install -y libgtk4-layer-shell0
```

!!! note
    On Ubuntu 24.04 the distro Rust (1.75) is too old for the committed lockfile. Bootstrap rustup as shown in [The rustup bootstrap](#the-rustup-bootstrap) before building.


### Arch Linux / Omarchy

Family also covers Omarchy (`ID=omarchy`, `ID_LIKE=arch`), Manjaro, EndeavourOS, Garuda, Artix, CachyOS, ArcoLinux, Archcraft.

En **Omarchy**, preferir:

```bash
omarchy pkg add rust python-pyqt6 qt6-svg python-gobject gtk4 libadwaita \
  gtk4-layer-shell python-cryptography dbus systemd-libs libevdev hidapi \
  ydotool git make base-devel
```

Con `pacman` (el instalador usa `--needed` tras el prompt interactivo):

```bash
sudo pacman -S --needed \
    rust \
    python python-pip \
    python-pyqt6 qt6-svg \
    python-gobject gtk4 libadwaita \
    gtk4-layer-shell \
    python-cryptography \
    dbus systemd-libs \
    libevdev hidapi \
    ydotool \
    git make base-devel
```

### openSUSE Tumbleweed

```bash
sudo zypper install -y \
    rust cargo \
    python3 python3-pip \
    python3-PyQt6 \
    python3-gobject gtk4 libadwaita-devel \
    python3-cryptography \
    dbus-1-devel systemd-devel \
    libevdev-devel libhidapi-devel \
    ydotool \
    git make

# layer-shell may not be in your enabled repos; safe to skip if unavailable
sudo zypper install -y gtk4-layer-shell || true
```

!!! note
    On openSUSE the PyQt6 package is `python3-PyQt6` (capital `Q`), unlike the lowercase `python3-pyqt6` used on Fedora and Debian. `gtk4-layer-shell` is not always present in the default repositories; the app still runs without it (layer-shell is only required for niri-style compositors that lack cursor IPC).


### NixOS (flake)

The repository ships a `flake.nix` exposing a package, a NixOS module, and a dev shell.

Try it without installing:

```bash
nix run github:JuhLabs/juhradial-mx
```

Enable it declaratively in your system flake. Add the input:

```nix
{
  inputs.juhradial-mx.url = "github:JuhLabs/juhradial-mx";
}
```

Then import the module and enable the service in your host config:

```nix
{
  imports = [ juhradial-mx.nixosModules.default ];

  services.juhradial-mx.enable = true;
}
```

The module installs the package system-wide, applies the bundled `99-juhradialmx.rules` udev rules for non-root device access, and ensures the `input` group exists. Rebuild with `sudo nixos-rebuild switch --flake .#<host>`.

Contributors can drop into a ready toolchain (Rust, Python with PyQt6 + PyGObject, GTK4/libadwaita, Qt6) with:

```bash
nix develop github:JuhLabs/juhradial-mx
```

## Build from source

If you want to build and run without a full system install:

```bash
git clone https://github.com/notolac/juhradial-mx.git
cd juhradial-mx

# Build the Rust daemon
cd daemon && cargo build --release && cd ..

# Run the overlay + daemon
./scripts/juhradial-mx.sh
```

The daemon binary lands at `daemon/target/release/juhradiald`. You still need the runtime dependencies for your distro (PyQt6, GTK4/libadwaita, `ydotool`) and, for non-root device access, the udev rules and `input` group membership described above. For a full system install, run `./install.sh` from the cloned tree — not `curl | bash`.

To run the daemon directly with verbose logging while debugging, see [Troubleshooting](troubleshooting.md):

```bash
./daemon/target/release/juhradiald --verbose
```

## Updating

Re-run `./install.sh` from an updated clone of **this fork**. Do not `curl | bash` the upstream script over a fork install. When `/opt/juhradial-mx` already exists as a git checkout, the installer may hard-reset that tree — keep fork development in your worktree (`~/Work/Personal/juhradial-mx`), not in `/opt`.

```bash
cd juhradial-mx
git pull
./install.sh
```

On NixOS, update the flake input and rebuild:

```bash
nix flake update juhradial-mx   # in your system flake directory
sudo nixos-rebuild switch --flake .#<host>
```

For a source checkout, pull and rebuild:

```bash
cd juhradial-mx
git pull
cd daemon && cargo build --release && cd ..
```

## After installing

- Launch from your application menu (JuhRadial MX) or run `juhradial-mx`. Hold the gesture (thumb) button on your MX Master to open the radial menu.
- Open the settings app (`juhradial-settings`) to remap buttons, pick a theme, and configure haptics, scroll, Easy-Switch, and Flow. See [Configuration](configuration.md) and [Features](features.md).
- Check the daemon:

```bash
systemctl --user status juhradialmx-daemon
journalctl --user -u juhradialmx-daemon -f
```

!!! info
    Two cases need a session restart (log out and back in, or reboot): first time your user is added to the `input` group (`systemctl --user restart` is **not** enough), and on GNOME for the cursor-helper Shell extension to load. If the menu appears at the top-left corner on GNOME, this is why.


If the menu does not appear or the mouse is not detected, head to [Troubleshooting](troubleshooting.md). For how the daemon, overlay, and settings app fit together, see [Architecture](architecture.md). Return to [Home](index.md) for the full page index.
