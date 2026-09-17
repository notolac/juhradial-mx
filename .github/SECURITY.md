# Security Policy

This repository is **notolac’s unofficial GPL-3 fork** of [JuhLabs/juhradial-mx](https://github.com/JuhLabs/juhradial-mx) for Omarchy / learning. It is not JuhLabs.

- **This fork:** report issues against https://github.com/notolac/juhradial-mx (GitHub Private Vulnerability Reporting if enabled; otherwise a private issue or discussion directed at `@notolac`). Do **not** email `dev@juhlabs.com` about this fork — that address is the **upstream** project’s channel.
- **Upstream JuhLabs:** has its own policy at https://github.com/JuhLabs/juhradial-mx/security. Vulnerabilities in unmodified upstream code should also be reported there so official users get the fix.

The technical notes below are inherited from upstream and still describe the software.

## Supported Versions

Security patches in **this fork** follow whatever `master` here carries. There is no separate support matrix for the fork. Upstream’s supported versions (for the official project) are documented in their SECURITY.md.

**Note:** JuhRadial MX is in active development. Prefer the latest `master` of whichever tree you actually run.

### Recent Security Updates (upstream history)

**v0.3.0-beta (March 2026):**
- Atomic profile writes (write-to-tmp + os.replace) prevent config corruption
- All print() replaced with logging module for proper audit trails
- JuhFlow uses X25519 + AES-256-GCM end-to-end encryption for cross-computer communication
- Peer key files enforced at chmod 0o600

**v0.2.9 (February 2026):**
- Fixed XWayland `dlsym` null pointer safety — all dynamically resolved X11 symbols are now null-checked before `transmute` to prevent undefined behavior
- Resolved all CodeQL unused-variable warnings (#90, #91, #92) in cursor detection code
- Removed dead assignments in exception handlers across overlay modules

**v0.2.7 (February 2026):**
- CodeQL hotfixes for code scanning alerts

**v0.2.1 (January 2026):** Critical security fixes:
- Fixed command injection vulnerability in radial menu
- Fixed insecure pairing code generation in Flow (now uses cryptographically secure randomness)
- Fixed overly permissive udev rules (MODE=0666 → 0660)
- Added input validation for D-Bus calls and HTTP endpoints

**Users on versions older than 0.2.1 should update immediately.**

## Reporting a Vulnerability

### This fork (`notolac/juhradial-mx`)

**Preferred:** GitHub Private Vulnerability Reporting on this repository.

1. Go to the [Security tab](https://github.com/notolac/juhradial-mx/security)
2. Click **Report a vulnerability** (if the maintainer has enabled it)
3. Include component (daemon, overlay, installer, Hyprland snippet), paths, and reproduction notes

If private reporting is not enabled, contact `@notolac` through GitHub. Do not file a public issue with exploit details.

### Upstream (`JuhLabs/juhradial-mx`)

Upstream’s preferred channel is their [Security tab](https://github.com/JuhLabs/juhradial-mx/security) or the email listed in **their** SECURITY.md (`dev@juhlabs.com`). Use that only for the official project, not for this fork’s packaging/Omarchy changes.

### What to Expect (this fork)

This is a personal learning fork. Acknowledgment and fix timelines are **best-effort**, not the upstream SLA. Credit is given unless you ask to stay anonymous.

## Security Considerations for JuhRadial MX

JuhRadial MX is a Linux desktop application that:

- **Runs with user privileges** (no elevated permissions required for normal operation)
- **Communicates via D-Bus** for IPC between daemon and overlay
- **GNOME Shell extension** exposes cursor position via a session D-Bus service (`org.juhradial.CursorHelper`)
- **Dynamically loads libX11** via `dlopen`/`dlsym` for XWayland cursor detection (with null-safety checks)
- **Accesses HID devices** via hidraw (requires udev rules for user access)
- **Reads configuration** from `~/.config/juhradial/config.json`
- **Listens to keyboard events** via evdev (F19 key only)

### Extra risk on this fork (Omarchy)

Installing udev rules, adding the user to group `input`, and running `ydotool` **injects keystrokes** via `/dev/uinput`. Flow is off by default; do not bind it on a LAN without an explicit decision. See [AGENTS.md](../AGENTS.md).

### In-Scope Security Concerns

We particularly care about vulnerabilities that could:

- Allow privilege escalation
- Execute arbitrary code
- Access user data outside the application scope
- Cause denial of service to the system
- Bypass access controls for HID devices
- Inject malicious commands via D-Bus
- Exploit configuration parsing (JSON injection)

### Out-of-Scope

The following are generally considered out of scope:

- Vulnerabilities requiring physical access to the machine
- Social engineering attacks
- Issues in third-party dependencies (report to their maintainers)
- Theoretical vulnerabilities without proof of concept

## Dependency Security

Enable Dependabot on **this** GitHub repo if you want automated PRs here. Upstream has its own Dependabot on JuhLabs/juhradial-mx.

## Code Scanning: CodeQL

CI may run GitHub CodeQL on this fork (Python overlay + Rust daemon). Results: [Security tab](https://github.com/notolac/juhradial-mx/security/code-scanning). That is not the official JuhLabs scan.

## Contact

- This fork: GitHub on `notolac/juhradial-mx` (not `dev@juhlabs.com`)
- Upstream product: [JuhLabs security policy](https://github.com/JuhLabs/juhradial-mx/blob/master/.github/SECURITY.md)
