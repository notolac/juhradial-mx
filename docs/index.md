> [!IMPORTANT]
> **Fork no oficial.** Estas páginas documentan el fork de [notolac/juhradial-mx](https://github.com/notolac/juhradial-mx) para Omarchy / aprendizaje. **No es JuhLabs.** El original es [JuhLabs/juhradial-mx](https://github.com/JuhLabs/juhradial-mx) ([GPL-3.0](https://github.com/JuhLabs/juhradial-mx/blob/master/LICENSE)). Wiki oficial de JuhLabs: https://juhlabs.github.io/juhradial-mx/ (no este repo).

<div align="center">
  <img src="https://raw.githubusercontent.com/JuhLabs/juhradial-mx/master/assets/juhradial-mx.svg" width="120" alt="JuhRadial MX">
  <h1>JuhRadial MX (fork no oficial)</h1>
  <p><strong>Código de JuhLabs, empaquetado aquí para Omarchy 4 / aprendizaje.</strong></p>
  <p>
    <code>Radial Menu</code> &nbsp;&middot;&nbsp; <code>Thumb-Wheel</code> &nbsp;&middot;&nbsp; <code>Per-App Profiles</code> &nbsp;&middot;&nbsp; <code>Haptics</code> &nbsp;&middot;&nbsp; <code>Easy-Switch</code> &nbsp;&middot;&nbsp; <code>Flow</code>
  </p>
</div>

Bienvenido. JuhRadial MX (proyecto original de JuhLabs) lleva la experiencia MX Master a Linux en Wayland. Este fork no reescribe el producto; añade integración Omarchy 4 / Hyprland 0.56 y deja claro que no es el repo oficial.

## Instalación (este fork)

**No uses `curl | bash`.** Clona y ejecuta el script local, o sigue los pasos manuales.

```bash
git clone https://github.com/notolac/juhradial-mx.git
cd juhradial-mx
# Omarchy:
omarchy pkg add rust python-pyqt6 qt6-svg python-gobject gtk4 libadwaita \
  gtk4-layer-shell python-cryptography dbus systemd-libs libevdev hidapi \
  ydotool git make base-devel
./install.sh
```

Pasos, Hyprland Lua y notas por distro: [Installation](installation.md). El overlay en Wayland se coloca con **XWayland**; no es un bug a “arreglar” reescribiendo el overlay.

## Explore

| Page | What's there |
|------|--------------|
| [Installation](installation.md) | Clone + local `./install.sh`, Omarchy, per-distro steps, build from source |
| [Features](features.md) | Radial menu, remapping, thumb-wheel, haptics, Easy-Switch, Flow, gaming, macros |
| [Configuration](configuration.md) | `config.json` reference, themes, per-application profiles |
| [Compositor Support](compositor-support.md) | GNOME, KDE Plasma 6, Hyprland (Lua on Omarchy 4), COSMIC, Sway, niri, X11 |
| [Troubleshooting](troubleshooting.md) | Common problems and how to fix them |
| [Architecture](architecture.md) | How it works, for contributors |
| [FAQ](faq.md) | Quick answers to common questions |

## What is new in v0.4.4

SmartShift and hi-res scroll settings now really program the mouse. Earlier builds spoke the wrong HID++ dialect to the SmartShift feature the MX Master 3/3S/4 expose, so wheel-mode and threshold changes reported success while changing nothing, and toggling smooth scrolling could silently rewrite the ratchet mode. v0.4.4 fixes the protocol, makes all three wheel modes (SmartShift, ratchet, free-spin) stick on the hardware, primes the Settings wheel and battery readouts on open, and reports the real connection type (Bolt, Unifying, or Bluetooth). See the [Changelog](https://github.com/JuhLabs/juhradial-mx/blob/master/CHANGELOG.md).

## A look at it

<div align="center">
  <img src="https://raw.githubusercontent.com/JuhLabs/juhradial-mx/master/assets/screenshots/RadialWheel.png" width="260" alt="Radial menu">
  <img src="https://raw.githubusercontent.com/JuhLabs/juhradial-mx/master/assets/screenshots/Settings.png" width="430" alt="Settings dashboard">
</div>

---

New here? Start with [Installation](installation.md), then skim [Features](features.md). Stuck? See [Troubleshooting](troubleshooting.md) or open an [issue on this fork](https://github.com/notolac/juhradial-mx/issues). Upstream issues: [JuhLabs/juhradial-mx](https://github.com/JuhLabs/juhradial-mx/issues).
