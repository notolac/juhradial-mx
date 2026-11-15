# AGENTS — LLM only

**Last modified:** 2026-11-15

Human intro: [README.md](README.md).  
Original project (full credit): [JuhLabs/juhradial-mx](https://github.com/JuhLabs/juhradial-mx).  
License: [LICENSE](LICENSE) (GPL-3.0) · attribution: [NOTICE](NOTICE).  
Knowledge graph: [graphify-out/GRAPH_REPORT.md](graphify-out/GRAPH_REPORT.md).

This repository is an **unofficial GPL-3 fork** of JuhRadial MX for **Omarchy 4 / learning**. It is not JuhLabs, not Logitech, and not Logi Options+. Do not present it as the upstream product.

---

## RULES (this file)

- Public documentation must stand alone: never name or link private repositories, internal hosts, access reviews, or operational gaps. Keep administrative audit records outside this repository.

- **RULE:** Show **last modified** date at top; bump when you change this file.
- **RULE:** Write **English** only here. Human docs may be Spanish. **Match the language of the file you edit.**
- **RULE:** Keep this file concise; prefer links over copied tables.
- **RULE:** Do **not** invent paths, binaries, D-Bus names, or commands. Prefer links to source-of-truth docs.
- **RULE:** **Destructive** work = stop, warn, need **explicit yes** before run. Includes: udev in `/etc`, `usermod`, writing `/usr`, wiping `~/.config/juhradial`, `hyprctl reload` of the user's live Hyprland config, enabling systemd user units, installing this app on the host.
- **RULE:** Do **not** install or test the daemon/overlay/udev on the host unless the user explicitly asks.
- **RULE:** Do **not** recommend `curl | bash`. Clone this repo and run `./install.sh` locally, or follow manual steps.
- **RULE:** Do **not** rename D-Bus (`org.kde.juhradialmx`), binaries (`juhradiald`), systemd units, udev files, or the overlay window title `JuhRadial MX` unless the user files an explicit task. Overlay title is coupled to Hyprland rules.
- **RULE:** Do **not** edit `/usr/share/omarchy/`. User Hyprland overrides live in `~/.config/hypr/`.
- **RULE:** New Python in this repo (helpers/tests) → **uv** only, **Python 3.14**, direct deps pinned with exact **`==`** (+ commit `uv.lock`). Overlay/settings stay on distro **PyQt6 / GTK / PyGObject**; do not migrate those to uv unless tasked.
- **RULE:** New bash → `set -euo pipefail`. Never run the installer as root (it asks for sudo per step).
- **RULE:** Hyprland on Omarchy 4 is **Lua only**. Versioned snippet: [packaging/omarchy/juhradial-hyprland.lua](packaging/omarchy/juhradial-hyprland.lua). Never write `windowrulev2`. Validate with `hyprctl reload` then `hyprctl configerrors` **only when the user asks to apply** their `~/.config/hypr`.
- **RULE:** Graphify before Grep/Read/Glob for architecture or “where is X”: `graphify query` / `path` / `explain`. After code edits: `graphify update .`. If `graphify-out/graph.json` is missing, extract (do not silence the rule).
- **RULE:** If the Cursor RTK hook is active, prefer Shell for noisy CLI. Do not reinstall RTK.
- **RULE:** Upstream sync: `git fetch upstream` then a conscious merge/rebase. Never `git reset --hard origin/master` over local fork work. Never force-push unless the user explicitly asks.
- **RULE:** Do not publish this fork to AUR, and do not deploy GitHub Pages as if they were the official JuhLabs wiki.

---

## What this repo is (real)

A Linux desktop app: Rust HID++ daemon + PyQt6 radial overlay + GTK4 settings. This fork’s extra goal is **Omarchy 4 / Hyprland 0.56 packaging and window-rule integration**.

| Tree | Role | Touch in Omarchy pass? |
|------|------|------------------------|
| [`daemon/`](daemon/) | Rust HID++ / D-Bus (`juhradiald`) | No, unless a Hyprland compositor default is wrong |
| [`overlay/`](overlay/) | PyQt6 radial menu + GTK4 settings | No (window title `JuhRadial MX` is coupled to Hyprland) |
| [`install.sh`](install.sh) | Distro installer; Hyprland config is the Omarchy bug | Yes |
| [`packaging/omarchy/`](packaging/omarchy/) | Hyprland Lua snippet for Omarchy 4 | Yes |
| [`packaging/udev/`](packaging/udev/) | hidraw + uinput rules | Do not install; document only |
| [`packaging/arch/`](packaging/arch/) | Experimental PKGBUILD (not AUR) | Metadata only |
| [`juhflow/`](juhflow/) | macOS Flow companion; `JuhFlow.dmg` is an **upstream binary** | Out of Omarchy scope |
| [`docs/`](docs/) | Human docs | Fork branding + Omarchy |

D-Bus remains `org.kde.juhradialmx` (~59 methods). Per-app profiles on Hyprland are already native (IPC socket `cursorpos`, `hyprctl` fallback). Overlay on Wayland is placed via **XWayland**; do not “fix” that by rewriting the overlay.

---

## Source of truth map (use this first)

| Need | Read |
|------|------|
| What this fork is | [README.md](README.md) · [NOTICE](NOTICE) |
| Architecture | [docs/architecture.md](docs/architecture.md) |
| Install (later; do not run on host yet) | [docs/installation.md](docs/installation.md) |
| Hyprland / Omarchy overlay rules | [packaging/omarchy/](packaging/omarchy/) · [docs/compositor-support.md](docs/compositor-support.md) |
| Agent rules | this file · [`.cursor/rules/`](.cursor/rules/) |
| Graph | [graphify-out/GRAPH_REPORT.md](graphify-out/GRAPH_REPORT.md) |

---

## How to build (dev, no system install)

From repo root. Does **not** install udev, systemd, or `/opt`.

```bash
cd daemon && cargo build --release
# binary: daemon/target/release/juhradiald
```

Do **not** run `./install.sh`, `sudo`, `usermod`, or copy files into `/etc` unless the user asks to install on the host.

---

## How not to install (yet)

Host remains a **pre-install** Omarchy 4 box until the user says otherwise:

- No udev in `/etc`
- No `usermod -aG input`
- No `/opt/juhradial-mx`
- No user systemd enable
- No edits to `~/.config/hypr/hyprland.lua` unless explicitly requested

When install is requested later, prefer: clone this fork → `omarchy pkg add …` deps → local `./install.sh` (never `curl | bash`) → paste the Lua snippet into the user override zone of `hyprland.lua` → **logout/reboot** after `input` group ( `systemctl --user restart` is not enough).

---

## Destructive / security

- udev hidraw + `/dev/uinput` + the `input` group + `ydotool` **inject keystrokes**. That is privilege, not a hardening exercise. Document it; do not “harden” udev in this pass.
- JuhFlow is off by default. Do not bind Flow on the LAN unless the user asks.
- GNOME extension / KDE / Flow trees stay in the repo; the Omarchy installer path simply does not configure them.

---

## Graphify

Local [Graphify](https://github.com/Graphify-Labs/graphify) map so agents query structure before grepping. CLI package is PyPI `graphifyy`, binary `graphify`. `/graphify` is a Cursor slash-command, not the CLI.

**Scope:** `daemon/`, `overlay/`, `packaging/`, `scripts/`, `docs/`, `install.sh`.

**Committed outputs** under [`graphify-out/`](graphify-out/): `graph.json`, `GRAPH_REPORT.md`, `graph.html` only. Sidecars are gitignored.

```bash
uv tool install graphifyy   # if missing
graphify extract . --code-only   # first graph; no API key (Cargo.toml lives in daemon/, not repo root)
graphify update .                        # after code edits (AST only)
graphify query "<question>"
graphify path "<A>" "<B>"
graphify explain "<concept>"
```

If Graphify is missing or extract fails: install/fix it. Do not skip the rule.

---

## Upstream sync

```bash
git remote -v
# origin   = https://github.com/notolac/juhradial-mx
# upstream = https://github.com/JuhLabs/juhradial-mx.git
git fetch upstream
# then merge or rebase consciously; never reset --hard origin/master over local fork commits
```

---

## If you update this file later

- Keep English.
- Stay concise; prefer links.
- Bump the date line.
- Only document observed repository facts.
