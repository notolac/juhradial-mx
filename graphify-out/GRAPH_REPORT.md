# Graph Report - notolac__juhradial-mx  (2026-11-14)

## Corpus Check
- 153 files · ~217,786 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 3918 nodes · 7357 edges · 191 communities (167 shown, 22 thin omitted)
- Extraction: 97% EXTRACTED · 3% INFERRED · 0% AMBIGUOUS · INFERRED: 187 edges (avg confidence: 0.89)
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `29809238`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- main.rs
- settings_dashboard.py
- actions.rs
- profiles.rs
- _Error
- JuhRadialService
- EvdevHandler
- ScreenEdgeDetector
- DpiManager
- cursor.rs
- MacroRecorder
- HapticManager
- FlowHandoffManager
- HidppShortMessage
- SettingsWindow
- JuhFlowGUI.swift
- FlowPage
- JuhFlowBridge
- MacrosPage
- window_tracker.rs
- test_overlay_media.py
- RadialMenu
- ActionPalette
- juhradial-overlay.py
- HidppDevice
- derive_and_store_peer_key
- FlowServer
- performance_monitor.rs
- theme.rs
- test_overlay_placement_dpr.py
- MacroEditorDialog
- MacroRecorderDialog
- config.rs
- FlowDiscoveryMixin
- ThemeManager
- FlowEdgeIndicator
- install.sh
- SettingsPage
- overlay_actions.py
- ._broadcast
- Mx4HapticPattern
- SimulatedMacClient
- Features
- LogiFlowDiscoveryResponder
- storage.rs
- AccessibilitySettings
- JuhFlowApp
- settings_page_macros.py
- test_app_icon_picker.py
- ButtonsPage
- SliceConfigDialog
- HapticsPage
- .new
- ApplicationProfilesGridDialog
- MacroTimeline
- DevicesPage
- types.rs
- _log
- compositor.rs
- ConfigManager
- triggers.rs
- HidrawHandler
- engine.rs
- Config
- notifications.rs
- ScrollPage
- .fmt
- juhflow_app.py
- SidebarMixin
- _MenuHarness
- bundled_themes.rs
- kwin_scripting.rs
- Option
- submenu_from_config
- test_settings_startup.py
- theme_contrast.py
- String
- LogiFlowRequestHandler
- LoadingState
- sizet_encode
- TestJuhFlowBridgeMessaging
- .new
- Compositor & Desktop Support
- test_hover_gate.py
- ButtonConfigDialog
- Troubleshooting
- Theme
- FlowPresenceServer
- marconi.py
- marconi_decrypt
- marconi_sniffer.py
- FlowRequestHandler
- test_kde_placement.py
- AddApplicationDialog
- KWinScriptError
- ButtonAction
- Self
- test_marconi.py
- device_descriptor.rs
- DPIVisualSlider
- Configuration
- _GlowView
- FlowIndicator
- LogiAgent
- TestJuhFlowBridgeStatusPublication
- hidraw.rs
- Architecture
- load_user_icon
- ._create_action_row
- Frequently Asked Questions
- Contributing to JuhRadial MX
- MacroAction
- ThumbwheelConfig
- DiscoveryListener
- EdgeDetector
- Installation
- LinuxBridgeClient
- probe_settings.py
- serialize_header_encode
- _svg_to_pixmap
- README.md
- juhradial-mx.sh
- test_smartshift_mapping.py
- ConnectionType
- ._setup_dnd
- RadialMenuPaintingMixin
- ciphertext_header_decode
- settings_flow_discovery.py
- _Timer
- Criterion
- constants.rs
- verify_feature_safety
- ._create_insert_button
- render-star-history.py
- JuhRadialCursorExtension
- QColor
- JuhFlow - macOS Companion for JuhRadial MX
- test_startup_latency.py
- portal_screenshot.py
- Changelog
- distro_build_test.sh
- setup.py
- juhradial-settings.sh
- sync-to-install.sh
- update-translations.sh
- test_launcher.sh
- juhradiald
- hypr_logical_rect
- index.md
- ._read_direction
- AGENTS — LLM only
- overlay_constants.py
- __init__.py
- probe_logi.py
- MediaStateQuery
- AppPickerDialog
- [0.3.1-beta] - 2026-03-13
- [0.4.0] - 2026-06-28
- actions_use_media_state
- RadialMenuConfigDialog
- [0.2.0] - 2025-12-27
- [0.2.12] - 2026-02-27
- [0.2.1] - 2026-01-03
- [0.2.5] - 2026-02-11
- [0.2.9] - 2026-02-18
- [0.3.0-beta] - 2026-03-07
- [0.3.2-beta] - 2026-03-24
- ThemePreview
- [0.2.10] - 2026-02-19
- [0.2.4] - 2026-02-08
- [0.2.7] - 2026-02-13
- [0.4.1] - 2026-07-21
- [0.4.3] - 2026-08-15
- [0.4.4] - 2026-08-18
- [Unreleased]
- .remapped_button_cids
- Omarchy 4 / Hyprland 0.56
- .start
- setup_i18n
- FlowServiceListener
- GitHub security controls
- get_flow_server
- open_settings
- ._get_bridge_peers
- .mouseReleaseEvent
- ._on_media_state_changed
- ._recompose_nudge
- ._reposition_cosmic
- ._tick_animations

## God Nodes (most connected - your core abstractions)
1. `JuhRadialService` - 59 edges
2. `HapticManager` - 59 edges
3. `HidppDevice` - 53 edges
4. `MacrosPage` - 51 edges
5. `ScrollPage` - 48 edges
6. `SettingsWindow` - 40 edges
7. `FlowPage` - 39 edges
8. `EvdevHandler` - 37 edges
9. `HapticError` - 37 edges
10. `HidrawHandler` - 37 edges

## Surprising Connections (you probably didn't know these)
- `test_second_monitor_center_no_clamp()` --calls--> `map_and_clamp_menu()`  [INFERRED]
  tests/test_kde_placement.py → overlay/overlay_constants.py
- `test_the_last_column_of_a_fractionally_scaled_monitor_still_matches()` --calls--> `get_monitor_at_cursor()`  [INFERRED]
  tests/test_hyprland_rotation.py → overlay/overlay_cursor.py
- `test_restart_requested_after_bounded_stop_replaces_cancelled_start()` --uses--> `ScreenEdgeDetector`  [INFERRED]
  tests/test_flow_edge_polling.py → overlay/flow/edge_detector.py
- `test_stop_cancels_a_start_blocked_in_config_before_owner_discard()` --uses--> `ScreenEdgeDetector`  [INFERRED]
  tests/test_flow_edge_polling.py → overlay/flow/edge_detector.py
- `test_stop_deadline_retains_handoff_during_a_blocked_callback()` --uses--> `ScreenEdgeDetector`  [INFERRED]
  tests/test_flow_edge_polling.py → overlay/flow/edge_detector.py

## Import Cycles
- 1-file cycle: `daemon/src/hidpp/patterns.rs -> daemon/src/hidpp/patterns.rs`

## Communities (191 total, 22 thin omitted)

### Community 0 - "main.rs"
Cohesion: 0.05
Nodes (63): claim_name(), init_dbus_service(), init_dbus_service_with_device(), Arc, Connection, Mutex, Result, SharedBatteryState (+55 more)

### Community 1 - "settings_dashboard.py"
Cohesion: 0.04
Nodes (78): JuhRadial MX - Internationalization (i18n) Module Thin wrapper around Python's…, Reload translations and patch _ in all imported settings modules., reload_language(), clear_device_mode_cache(), detect_logitech_mouse(), _detect_non_logitech_mouse(), disable_scroll_on_scale(), _get_daemon_proxy() (+70 more)

### Community 2 - "actions.rs"
Cohesion: 0.07
Nodes (52): Command, a_process_value_wins_over_the_session_one(), Action, ActionError, ActionExecutor, ActionType, an_unset_or_empty_process_value_falls_back_to_the_session(), apply_session_env() (+44 more)

### Community 3 - "profiles.rs"
Cohesion: 0.08
Nodes (42): apply_hardware_profile(), create_default_profile(), ensure_config_dir(), ensure_config_dir_at(), get_config_dir(), get_profiles_path(), HardwareProfile, load_hardware_profiles() (+34 more)

### Community 4 - "_Error"
Cohesion: 0.05
Nodes (35): BatteryError, BatteryHandler, BatteryState, new_shared_state(), Arc, Display, File, Formatter (+27 more)

### Community 5 - "JuhRadialService"
Cohesion: 0.08
Nodes (5): JuhRadialService, Result, String, Vec, SignalEmitter

### Community 6 - "EvdevHandler"
Cohesion: 0.08
Nodes (34): active_handler(), consecutive_two_axis_frames_emit_final_coordinates_once_per_frame(), cursor_events(), cursor_movement_is_coalesced_until_syn_report(), DeviceInfo, dropped_frame_discards_pending_cursor_movement(), dropped_x_does_not_leak_into_a_later_valid_y_frame(), EvdevError (+26 more)

### Community 7 - "ScreenEdgeDetector"
Cohesion: 0.05
Nodes (44): Screen edge cursor monitoring with dwell detection. Polls cursor position and…, Start the polling thread., Claim one queued start after an invalidated reservation clears., Start one reserved poll generation with ``_lifecycle_lock`` held., Wait off the UI thread before replacing a stopping generation., Invalidate callbacks, request stop, and report lifecycle quiescence., Suppress edge detection for ms milliseconds (prevents bounce-back)., Clear edge sample state owned by one polling generation. (+36 more)

### Community 8 - "DpiManager"
Cohesion: 0.07
Nodes (37): GamingMode, new_shared_gaming_mode(), Option, Self, SharedGamingMode, SharedHapticManager, String, test_dpi_manager_access() (+29 more)

### Community 9 - "cursor.rs"
Cohesion: 0.17
Nodes (22): CursorPosition, get_cursor_position(), get_cursor_via_gnome_shell(), get_cursor_via_hyprland(), get_cursor_via_hyprland_socket(), get_cursor_via_kwin_dbus(), get_cursor_via_xdotool(), get_cursor_via_xwayland() (+14 more)

### Community 10 - "MacroRecorder"
Cohesion: 0.07
Nodes (41): new_shared_config(), JuhRadialService, Arc, Mutex, Self, SharedBatteryState, SharedConfig, SharedDeviceName (+33 more)

### Community 11 - "HapticManager"
Cohesion: 0.07
Nodes (9): ConnectionState, HapticManager, Default, Option, PathBuf, Result, Self, String (+1 more)

### Community 13 - "FlowHandoffManager"
Cohesion: 0.08
Nodes (19): FlowHandoffManager, Get monitor geometry from xrandr (thread-safe, no Qt needed)., Get flow monitor geometry (thread-safe). Uses cached value from main-thread…, Establish outgoing presence connection to a peer., Set which screen edge a peer is mapped to., Stop all presence clients., Called when cursor hits a screen edge. Finds which peer is configured for this…, Sync clipboard to peer via presence or bridge. (+11 more)

### Community 14 - "HidppShortMessage"
Cohesion: 0.20
Nodes (4): HidppLongMessage, HidppShortMessage, Option, Self

### Community 15 - "SettingsWindow"
Cohesion: 0.05
Nodes (28): main(), Clean up all resources on application exit, Show a toast notification, Pause/resume polling timers when window visibility changes., Clean up resources when window is closed, Initialize D-Bus connection to daemon, Setup UPower D-Bus signals for instant battery charging updates, Handle UPower property changes - triggers instant battery update (+20 more)

### Community 16 - "JuhFlowGUI.swift"
Cohesion: 0.07
Nodes (40): App, AppKit, Bool, CGFloat, Color, Content, Context, Double (+32 more)

### Community 17 - "FlowPage"
Cohesion: 0.06
Nodes (18): FlowPage, Flow multi-computer control settings page, Enable/disable the edge-dependent controls in one place., Handle the cross-screen cursor (Flow master) toggle., Restart the overlay (debounced) so it applies the saved Flow config in its own…, Persist the peer direction and re-apply Flow via the overlay. Only saves config…, Reflect the active direction in the segmented control (no recursion)., Drive direction_dropdown (the authoritative model) from the segments. (+10 more)

### Community 18 - "JuhFlowBridge"
Cohesion: 0.05
Nodes (51): Flow protocol constants and configuration, build_encrypted_packet(), decrypt_payload(), derive_aes_key(), derive_shared_secret(), encrypt_payload(), generate_node_id(), generate_x25519_keypair() (+43 more)

### Community 19 - "MacrosPage"
Cohesion: 0.08
Nodes (7): MacrosPage, Macro studio: library + run behaviour + live timeline., Set parent window reference (deferred from constructor)., Reload macros from disk and rebuild the library list., Sync the right column + behaviour card to the selected macro., Return (label, sub) for a step chip, or None to skip (delays/key-up)., Cheap in-place refresh of a single library row's repeat icon/meta.

### Community 20 - "window_tracker.rs"
Cohesion: 0.10
Nodes (32): ChildStdout, hyprland_loop(), hyprland_socket2_path(), install_kwin_script(), parse_active_window_id(), parse_wm_class(), read_xprop_class_output(), Child (+24 more)

### Community 21 - "test_overlay_media.py"
Cohesion: 0.14
Nodes (20): fixture, _Menu, _menu_methods(), _program(), Path, qt_app(), _Query, _radial_menu_method() (+12 more)

### Community 22 - "RadialMenu"
Cohesion: 0.11
Nodes (16): RadialMenu, Log an asynchronous haptic reply and release its watcher., Ambient tick: pulse when the cursor lands on a different monitor. Runs…, Scale the ring window to the monitor it is shown on. Drawing stays in logical…, Set circular window mask on KDE to eliminate rectangular artifact., Handle HideMenu signal - determine tap vs hold based on time elapsed., Handle cursor movement from daemon (relative to menu center)., Complete the close after selection flash - execute action and hide. (+8 more)

### Community 23 - "ActionPalette"
Cohesion: 0.07
Nodes (22): ActionPalette, DelayInputDialog, KeyCaptureDialog, MouseActionDialog, Create a styled palette button with icon and label., Send action to the timeline., Open key capture dialog., Open mouse button selector dialog. (+14 more)

### Community 24 - "juhradial-overlay.py"
Cohesion: 0.07
Nodes (41): create_tray_icon(), Create system tray icon with menu, # NOTE: Cannot import settings_config here - it imports GTK4 (gi), JuhRadial MX - PyQt6 Radial Menu Overlay Listens for MenuRequested signal and…, Block until the X server behind $DISPLAY accepts connections. On a cold boot…, _wait_for_x11(), get_all_monitors_logical(), get_current_monitor_name() (+33 more)

### Community 25 - "HidppDevice"
Cohesion: 0.08
Nodes (12): HidppDevice, File, HashMap, Path, Result, String, HapticError, Display (+4 more)

### Community 26 - "derive_and_store_peer_key"
Cohesion: 0.11
Nodes (19): Flow client for connecting to another JuhRadialMX computer, delete_peer_key(), derive_and_store_peer_key(), generate_identity(), get_keys_dir(), get_node_id(), get_public_key_hex(), load_peer_key() (+11 more)

### Community 27 - "FlowServer"
Cohesion: 0.06
Nodes (20): get_clipboard(), Clipboard helpers for Flow (supports Wayland and X11), Return whether clipboard sharing is enabled (flow.share_clipboard). Read fresh…, Get clipboard contents (supports Wayland and X11), Set clipboard contents (supports Wayland and X11). Retries on failure since wl-…, Single attempt to set clipboard., set_clipboard(), sharing_enabled() (+12 more)

### Community 28 - "performance_monitor.rs"
Cohesion: 0.11
Nodes (20): BlurMode, FrameMetrics, PerformanceMonitor, Default, Duration, Instant, Self, VecDeque (+12 more)

### Community 29 - "theme.rs"
Cohesion: 0.09
Nodes (22): AnimationSettings, default_accent_secondary(), default_error(), default_idle_effect(), default_shadow(), default_success(), default_text_secondary(), default_version() (+14 more)

### Community 30 - "test_overlay_placement_dpr.py"
Cohesion: 0.17
Nodes (27): hyprland_menu_center(), map_and_clamp_menu(), map_logical_to_screen(), Menu-center in Qt point space for a Hyprland compositor-logical cursor. Tiered…, Place the menu for a Hyprland logical cursor and clamp it on-screen. Maps the…, Map a compositor-logical cursor coordinate into the matching Qt screen's…, _geo(), Regression tests for radial-menu placement under HiDPI / fractional scaling.… (+19 more)

### Community 31 - "MacroEditorDialog"
Cohesion: 0.07
Nodes (20): MacroEditorDialog, _mouse_button_name(), Human-readable name for a GDK mouse button number., Populate UI from macro dict., Save macro and close., Show/hide repeat count and sequence tabs based on mode., Handle sequence tab toggle., Handle timeline selection change. (+12 more)

### Community 32 - "MacroRecorderDialog"
Cohesion: 0.09
Nodes (13): MacroRecorderDialog, Recording dialog that captures keyboard/mouse events. Workflow: Countdown…, Start macro recording via daemon D-Bus if available., Stop D-Bus macro recording., Handle macro event from daemon D-Bus signal., Add a recorded event to the list., Add a visual row to the live events list., Draw status indicator: countdown number, pulsing dot, or checkmark. (+5 more)

### Community 33 - "config.rs"
Cohesion: 0.08
Nodes (13): test_action_for_cid(), test_buttons_config_defaults_match_settings_ui(), test_config_serialization(), test_default_config(), test_haptic_config_defaults(), test_haptic_config_slice_debounce_defaults(), test_haptic_disabled_check(), test_haptics_enabled_getter() (+5 more)

### Community 34 - "FlowDiscoveryMixin"
Cohesion: 0.12
Nodes (12): FlowDiscoveryMixin, Mixin providing network discovery and pairing methods for FlowPage. Expects the…, Scan network for other computers running JuhRadialMX, Get set of IPs of connected JuhFlow bridge peers., Discover other computers on the network running JuhRadialMX, Input Leap, or…, Clean up any active Zeroconf instance, Called when the page is being destroyed or navigated away from, Register this computer as a Flow-compatible service (+4 more)

### Community 35 - "ThemeManager"
Cohesion: 0.09
Nodes (24): HashMap, ThemeManager, Arc, Display, Duration, Formatter, HashSet, Instant (+16 more)

### Community 36 - "FlowEdgeIndicator"
Cohesion: 0.11
Nodes (10): FlowEdgeIndicator, QWidget, Load the flow indicator PNG from assets., Set which edge to show the indicator on and position it., Return the correct pixmap for the current direction., Get geometry of the configured monitor. "" (auto/default) = original cursor-…, Position the widget on the configured screen edge., Glowing bar indicator on the configured flow edge. (+2 more)

### Community 37 - "install.sh"
Cohesion: 0.17
Nodes (34): build_project(), check_desktop(), check_existing_install(), check_logitech_device(), check_root(), check_wayland(), clone_repo(), configure_desktop() (+26 more)

### Community 38 - "SettingsPage"
Cohesion: 0.13
Nodes (11): General settings page, Handle DE selection change - saves preference., Apply DE-specific default commands to radial menu slices., Handle theme selection change - applies to both overlay and settings, Reload CSS with new theme colors, Path to the juhradial-mx launcher, preferring one that exists. Covers the dev…, Write the autostart .desktop pointing Exec at exec_path., Ensure the autostart entry exists and its Exec target is real. Older builds… (+3 more)

### Community 39 - "overlay_actions.py"
Cohesion: 0.10
Nodes (27): hex_to_qcolor(), load_minimal_mode(), load_radial_image(), load_theme(), JuhRadial MX - Overlay Actions & Theme Bridge Theme loading, action…, Convert hex color string to QColor, Load theme from config and convert to QColor objects, Read radial.minimal_mode from config.json. Returns bool. (+19 more)

### Community 40 - "._broadcast"
Cohesion: 0.11
Nodes (10): get_presence_server(), Send an edge hit event to all connected JuhFlow peers., Send clipboard content to peers., Request device channel switch on peer., Return list of connected peers., Send message to all connected peers., Return peers from both JuhFlow and Logitech presence connections., Publish connected peers atomically, or clear stale disconnected state. (+2 more)

### Community 41 - "Mx4HapticPattern"
Cohesion: 0.09
Nodes (11): HapticEvent, HapticPattern, HapticPulse, Mx4HapticPattern, PerEventPattern, Default, Display, Formatter (+3 more)

### Community 42 - "SimulatedMacClient"
Cohesion: 0.08
Nodes (17): _free_port(), _make_bridge(), Create a bridge on a free port with discovery disabled., Test X25519 handshake between bridge server and simulated Mac client., Handshake should exchange pubkeys and derive matching AES keys., Bridge should register the peer after successful handshake., Test reconnect behavior after disconnect., After disconnect, new client should connect with fresh handshake. (+9 more)

### Community 43 - "Features"
Cohesion: 0.07
Nodes (29): Available actions, Button & Action Remapping, Easy-Switch, Edge and indicator controls, Feature overview, Features, Gaming Mode, Gaming Mode + Macros (+21 more)

### Community 44 - "LogiFlowDiscoveryResponder"
Cohesion: 0.10
Nodes (13): LogiFlowDiscoveryResponder, Add or update a peer's AES key for encrypted discovery., Remove a peer's AES key., Stop listening and broadcasting, Main loop listening for discovery requests, Try decrypting with each known peer key. Returns (peer_name, plaintext) or None., Periodically broadcast: encrypted beacons to paired peers, plaintext for…, Build the plaintext discovery announcement packet (includes public key for… (+5 more)

### Community 45 - "storage.rs"
Cohesion: 0.19
Nodes (27): delete_macro(), delete_macro_from(), ensure_macros_dir(), load_all_macros(), load_all_macros_from(), load_macro(), load_macro_file(), macros_dir() (+19 more)

### Community 46 - "AccessibilitySettings"
Cohesion: 0.15
Nodes (11): AccessibilitySettings, EffectiveAnimationTimings, Default, Option, Self, test_default_settings(), test_default_timings(), test_high_contrast_override() (+3 more)

### Community 47 - "JuhFlowApp"
Cohesion: 0.09
Nodes (15): JuhFlowApp, Main JuhFlow application controller., Start JuhFlow. If linux_ip provided, connect directly. Otherwise discover., Listen for Ctrl+Shift+Arrow to switch machines., Send edge_hit + device_switch to Linux., Send Easy-Switch ChangeHost command, toggle BT off briefly as insurance., Establish encrypted bridge to Linux JuhRadial MX., Auto-connect to first discovered Linux peer. (+7 more)

### Community 48 - "settings_page_macros.py"
Cohesion: 0.08
Nodes (34): JuhRadial MX - Macro Editor Dialog Full macro editing experience: name,…, JuhRadial MX - Macro Recorder Modal recording dialog with countdown, live event…, delete_macro(), duplicate_macro(), ensure_macros_dir(), get_macros_dir(), load_all_macros(), load_macro() (+26 more)

### Community 49 - "test_app_icon_picker.py"
Cohesion: 0.13
Nodes (19): command_for_app(), _is_terminal_app(), JuhRadial MX - Application Picker AppPickerDialog lists installed applications…, Return a plain shell command for launching app_info., True for Terminal=true entries (htop, vim, ...): launched directly via Popen…, Resolve app_info's icon to a real image file and cache a copy under the config…, _replace_field_code(), resolve_and_cache_icon() (+11 more)

### Community 50 - "ButtonsPage"
Cohesion: 0.10
Nodes (15): translate_radial_label(), ButtonsPage, Create a premium styled button assignment row, Buttons configuration page - Premium UI Design, Handle button configuration click, Refresh the button action labels after config change, Get the current radial menu slices from config, Create a compact slice row widget (+7 more)

### Community 51 - "SliceConfigDialog"
Cohesion: 0.16
Nodes (8): Dialog for configuring a single radial menu slice, Apply a preset action, Handle action type change, Show/hide command entry based on action type, Render a submenu row as pointing at an app: read-only display text., Handle color selection - ensure exactly one is selected, Save the slice configuration, SliceConfigDialog

### Community 52 - "HapticsPage"
Cohesion: 0.13
Nodes (5): HapticsPage, _hex_rgb(), Parse '#rrggbb' to a (r, g, b) float tuple., Static damped actuator pulse shape in [-1, 1] for the preset. The carrier…, Haptic feedback settings page - MX Master 4 haptic patterns

### Community 53 - ".new"
Cohesion: 0.12
Nodes (21): get_system_themes_dir(), get_user_themes_dir(), Display, Formatter, Path, PathBuf, Result, scan_themes_directory() (+13 more)

### Community 54 - "ApplicationProfilesGridDialog"
Cohesion: 0.10
Nodes (14): Toggle grid view for application profiles, ApplicationProfilesGridDialog, AppProfileSlicesDialog, Grid view dialog for per-application profiles, Load profiles dict from profiles.json, Save profiles dict to profiles.json atomically, Create a card widget for one app profile, Remove one app profile (+6 more)

### Community 55 - "MacroTimeline"
Cohesion: 0.14
Nodes (12): MacroTimeline, Replace entire action list and rebuild the UI., Return current actions list., Add an action at the end (or after selected)., Insert an action at a specific index., Remove action at index., Duplicate the action at index, inserting after it., Move action from one position to another. (+4 more)

### Community 56 - "DevicesPage"
Cohesion: 0.11
Nodes (10): DevicesPage, Build the connection + (optionally) battery rows for the loaded state., Populate the LoadingState with connection + battery info via D-Bus., Device information and management page, Card reflecting live HID++ state pushed by the daemon., Pull initial values so the readouts are populated before any signal., Three-state wheel label from the daemon's (enabled, threshold). (True, 1-254) =…, Detect connection type for a generic (non-Logitech) mouse. Checks… (+2 more)

### Community 57 - "types.rs"
Cohesion: 0.13
Nodes (11): default_repeat_count(), default_standard_delay(), default_use_standard_delay(), events_to_actions(), MacroConfig, RawAction, Option, String (+3 more)

### Community 58 - "_log"
Cohesion: 0.17
Nodes (8): QWidget, Premium loading splash for JuhRadial MX startup., Mark app loading as done. Splash stays until min time + daemon ready., SplashScreen, _log(), Write debug message to log file (stdout may be /dev/null)., get_kde_monitors_logical(), KDE logical monitor rects via kscreen-doctor, cached with a short TTL. Returns…

### Community 59 - "compositor.rs"
Cohesion: 0.13
Nodes (13): AtomicU64, clones_share_one_flag(), cursor_backend(), CursorBackend, KWinAvailability, KWinScripting, owner_loss_and_recovery_update_state(), Arc (+5 more)

### Community 60 - "ConfigManager"
Cohesion: 0.09
Nodes (17): ConfigManager, detect_terminal(), Set callback for showing toast notifications, Show toast if callback is set, Load config from file or return defaults. On first run (de_defaults_applied is…, Reload config from disk - useful when settings window reopens, Deep merge loaded config with defaults, Recursively update base dict with updates (+9 more)

### Community 61 - "triggers.rs"
Cohesion: 0.12
Nodes (10): gdk_button_to_evdev(), parse_trigger(), HashMap, Option, Self, String, Vec, test_trigger_map_empty() (+2 more)

### Community 62 - "HidrawHandler"
Cohesion: 0.13
Nodes (9): cid_to_evdev_keycode(), evdev_keycode_to_cid(), HidrawHandler, File, Instant, Option, PathBuf, SharedConfig (+1 more)

### Community 63 - "engine.rs"
Cohesion: 0.12
Nodes (29): effective_delay(), execute_action(), execute_actions_once(), MacroEngine, release_stuck_keys(), Arc, AtomicBool, Default (+21 more)

### Community 64 - "Config"
Cohesion: 0.19
Nodes (10): Config, ConfigError, load_shared_config(), Formatter, Option, PathBuf, Result, Self (+2 more)

### Community 65 - "notifications.rs"
Cohesion: 0.18
Nodes (14): battery_status_label(), decode_battery(), decode_dpi(), decode_host(), decode_ratchet(), decode_wireless_status(), HardwareNotification, NotificationIndices (+6 more)

### Community 66 - "ScrollPage"
Cohesion: 0.05
Nodes (23): 3-mode segmented control: Ratchet / SmartShift / Free-spin. Matches the Logi…, Set active mode without triggering callback., Sensitivity settings - pointer, scroll wheel, and thumb wheel. Layout matches…, Handle wheel mode change from segmented control., Map Easy 1% -> Hard 100% to automatic thresholds 1..49. Threshold 0 selects…, Map automatic thresholds 1..49 back to Easy/Hard percent., Switch to spin button for manual sensitivity entry., Enter pressed - apply and switch back to label. (+15 more)

### Community 68 - "juhflow_app.py"
Cohesion: 0.10
Nodes (23): JuhFlowMenubar, main(), JuhFlow - macOS menubar companion app for JuhRadial MX Flow. Monitors mouse…, macOS menubar app for JuhFlow., _recv_framed(), build_encrypted_packet(), decrypt_payload(), derive_aes_key() (+15 more)

### Community 69 - "SidebarMixin"
Cohesion: 0.10
Nodes (13): get_nav_items_for_mode(), Return NAV_ITEMS filtered by device mode. In 'generic' mode, Logitech-only tabs…, Advance breathing cycle and redraw the heart., Draw a glowing heart with Cairo., Parse '#rrggbb' to (r, g, b) floats 0..1., Open PayPal donation link, Show confirmation dialog, then kill daemon + overlay + settings., Mixin providing sidebar creation and related methods for SettingsWindow. (+5 more)

### Community 70 - "_MenuHarness"
Cohesion: 0.20
Nodes (14): _MenuHarness, _MouseEvent, _radial_menu_method(), Behavioral regressions for stable submenu repaint scheduling., test_changing_the_highlighted_subitem_repaints_once(), test_changing_the_highlighted_subitem_triggers_haptic(), test_clearing_a_real_submenu_highlight_repaints_once(), test_clearing_the_highlighted_subitem_does_not_trigger_haptic() (+6 more)

### Community 71 - "bundled_themes.rs"
Cohesion: 0.17
Nodes (15): BundledThemeInfo, get_bundled_theme(), get_bundled_theme_info(), get_default_theme(), is_bundled_theme(), list_bundled_themes(), Option, Vec (+7 more)

### Community 72 - "kwin_scripting.rs"
Cohesion: 0.20
Nodes (15): trigger_kwin_cursor_script(), Call, cursor_script_uses_native_load_run_and_unload_calls(), dispatched_run_error_suppresses_handler_fallback_and_still_cleans_up(), kwin_peer(), rejected_load_preserves_pre_dispatch_handler_fallback(), Arc, Connection (+7 more)

### Community 73 - "Option"
Cohesion: 0.16
Nodes (14): batch_divert_scans_controls_once_and_returns_only_successful_cids(), batch_divert_skips_io_for_an_empty_request(), batch_divert_stops_when_control_count_is_unavailable(), ButtonDivertIo, control_response(), count_response(), MockButtonDivertIo, Request (+6 more)

### Community 74 - "submenu_from_config"
Cohesion: 0.19
Nodes (12): _link_icon_for_url(), Pick a submenu icon id for a quick-link URL., Build a submenu from configured quick links, or None if unusable. ``items`` is…, submenu_from_config(), test_submenu_app_entry_with_unresolvable_icon_falls_back_to_browser(), test_submenu_app_entry_without_command_is_skipped(), Configurable quick-link submenu (custom URLs replacing the AI defaults). A…, test_capped_at_four_entries() (+4 more)

### Community 75 - "test_settings_startup.py"
Cohesion: 0.26
Nodes (11): _calls_named(), _load_device_settings_method(), FunctionDef, Regression contracts for a responsive Settings window startup., _scroll_page_method(), _settings_window_method(), test_delayed_smartshift_reply_is_ignored_after_local_edit(), test_flow_dependencies_are_imported_only_on_flow_navigation() (+3 more)

### Community 76 - "theme_contrast.py"
Cohesion: 0.16
Nodes (17): generate_css(), JuhRadial MX - Settings CSS Design system: "PHOSPHOR" — an obsidian instrument…, best_text_color(), contrast_ratio(), ensure_contrast(), _hex_to_rgb(), Text legibility helpers for rich backgrounds (pure Python, no Qt). WCAG-based…, WCAG relative luminance (0..1) for an (r, g, b) 0..255 tuple. (+9 more)

### Community 77 - "String"
Cohesion: 0.17
Nodes (12): default_confirm(), default_invalid(), default_menu_appear(), default_monitor_switch(), default_pattern(), default_slice_change(), default_theme(), default_window_switch() (+4 more)

### Community 78 - "LogiFlowRequestHandler"
Cohesion: 0.29
Nodes (5): LogiFlowRequestHandler, BaseHTTPRequestHandler, Strip newlines and control characters to prevent log injection., Handle Logi Options+ Flow requests on port 59866, _sanitize_log()

### Community 79 - "LoadingState"
Cohesion: 0.07
Nodes (10): GeneratedAssetHero, GenericMouseVisualization, LoadingState, MouseVisualization, Interactive mouse visualization with hoverable button labels, Mouse image visualization for generic (non-Logitech) mice. Shows…, Track hover over button labels., Handle click on a button label. (+2 more)

### Community 80 - "sizet_encode"
Cohesion: 0.19
Nodes (11): Encode a value using thekogans SizeT prefix-varint format. Encoding uses…, Decode a SizeT value from data at offset. Returns (value, bytes_consumed)., sizet_decode(), sizet_encode(), Test thekogans SizeT variable-length integer encoding., Values 0-127 should encode as single byte., Values 128-16383 should encode as 2 bytes., Larger values should use 3+ bytes. (+3 more)

### Community 81 - "TestJuhFlowBridgeMessaging"
Cohesion: 0.12
Nodes (9): Test encrypted message exchange after handshake., Server should decrypt client messages correctly., Edge hit from Mac client should trigger the on_edge_hit callback., Clipboard message from Mac should trigger on_clipboard callback., Server should send encrypted messages to connected client., Server clipboard message should arrive at client., Client should receive heartbeats from server within ~6 seconds., Multiple messages should all be delivered in order. (+1 more)

### Community 82 - ".new"
Cohesion: 0.20
Nodes (9): HidrawError, Display, Formatter, Path, Result, Self, Sender, test_hidraw_close_resets_connection_state() (+1 more)

### Community 83 - "Compositor & Desktop Support"
Cohesion: 0.08
Nodes (25): Compositor & Desktop Support, COSMIC, Cursor positioning, Cursor positioning, GNOME (Wayland), How cursor detection works, How the daemon and overlay detect your session, Hyprland (+17 more)

### Community 84 - "test_hover_gate.py"
Cohesion: 0.20
Nodes (13): hover_gate(), hover_is_armed(), True once the pointer has moved clear of `anchor`, an (dx, dy) pair. Offsets…, Whether `source` may highlight a slice yet, updating its anchor state.…, Radial menu opening with an option already selected (issue #60). The menu…, test_a_source_stays_armed_once_it_has_moved(), test_deliberate_move_arms(), test_diagonal_jitter_uses_euclidean_distance() (+5 more)

### Community 85 - "ButtonConfigDialog"
Cohesion: 0.14
Nodes (9): Open button configuration dialog for generic mouse buttons, Open button configuration dialog, Refresh UI after dialog closes, ButtonConfigDialog, _group_label(), Dialog for configuring a mouse button action, JuhRadial MX - Button Configuration Dialog ButtonConfigDialog for configuring…, Handle row click - update checkmark and selection (+1 more)

### Community 86 - "Troubleshooting"
Cohesion: 0.08
Nodes (25): Build and installation, Buttons and thumb-wheel actions do nothing, Device detection, Haptics and battery, Menu position and visibility, Problem: a remapped button or thumb-wheel action (volume, zoom, copy, horizontal scroll) fires nothing, Problem: a USB-cabled or receiver mouse works, but the same mouse over Bluetooth is invisible, Problem: no haptic feedback, and battery/DPI/Easy-Switch fields are empty (+17 more)

### Community 87 - "Theme"
Cohesion: 0.33
Nodes (5): GlassmorphismSettings, Option, Vec, Theme, ThemeOverrides

### Community 88 - "FlowPresenceServer"
Cohesion: 0.09
Nodes (11): FlowPresenceClient, FlowPresenceServer, Send an encrypted message to a connected peer., Send an encrypted message to all connected peers., Encrypted TCP presence client - connects to a peer's presence server., Start connection with reconnect loop., Encrypt and send a message to the peer., Send a length-prefixed message. (+3 more)

### Community 89 - "marconi.py"
Cohesion: 0.16
Nodes (12): build_client_key_exchange(), build_packet_payload(), derive_marconi_key(), thekogans Marconi wire format implementation. Implements the binary protocol…, Encode Session::Header. session_id: 16 bytes (GUID) sequence: ui64 BE (8 bytes)…, Decode Session::Header. Returns (session_id, sequence)., Build SerializableHeader + payload for embedding in a Marconi frame., Build a ClientKeyExchangePacket payload. This is the packet data (after… (+4 more)

### Community 90 - "marconi_decrypt"
Cohesion: 0.25
Nodes (10): frame_header_decode(), generate_key_id(), marconi_decrypt(), marconi_encrypt(), Decode a FrameHeader from data. Returns (key_id, ciphertext_length)., Encrypt a payload into a complete Marconi frame. Returns the full wire bytes:…, Decrypt a complete Marconi frame. Args: data: raw bytes starting with…, Generate a random 32-byte key identifier (Serializable ID). (+2 more)

### Community 91 - "marconi_sniffer.py"
Cohesion: 0.20
Nodes (14): hex_dump(), parse_udp_beacon(), Attempt to parse a UDP discovery beacon. Beacons may be: 1. thekogans encrypted…, Format bytes as hex dump for protocol analysis., listen_udp(), main(), probe_tcp(), Read machine-id from /etc/machine-id, truncated to 16 chars. (+6 more)

### Community 92 - "FlowRequestHandler"
Cohesion: 0.23
Nodes (5): FlowRequestHandler, BaseHTTPRequestHandler, Strip newlines and control characters to prevent log injection., HTTP request handler for Flow server, _sanitize_log()

### Community 93 - "test_kde_placement.py"
Cohesion: 0.21
Nodes (11): find_monitor_at(), _parse_kscreen_json(), Parse `kscreen-doctor -o --json` output into logical monitor rects. The output…, Return the monitor rect containing (x, y), else None., _kscreen_doc(), KDE Wayland second-monitor drift regression (KWin-logical vs Qt space). Real…, test_find_monitor_at_boundaries(), test_main_monitor_identity() (+3 more)

### Community 94 - "AddApplicationDialog"
Cohesion: 0.16
Nodes (6): Open dialog to add per-application profile, AddApplicationDialog, Get list of running applications using D-Bus and process detection, Real application icon: desktop entry -> icon theme -> generic., Dialog for adding a per-application profile, Add the application profile

### Community 95 - "KWinScriptError"
Cohesion: 0.21
Nodes (7): KWinScriptError, KWinScriptRunOutcome, Display, Formatter, From, Option, Result

### Community 96 - "ButtonAction"
Cohesion: 0.27
Nodes (10): ButtonAction, ButtonsConfig, default_back_action(), default_forward_action(), default_gesture_action(), default_horizontal_scroll_action(), default_middle_action(), default_shift_wheel_action() (+2 more)

### Community 97 - "Self"
Cohesion: 0.18
Nodes (7): EffectiveGlassmorphism, HighContrastSettings, Default, Self, test_get_high_contrast_settings(), test_high_contrast_glassmorphism(), test_high_contrast_settings_defaults()

### Community 98 - "test_marconi.py"
Cohesion: 0.21
Nodes (9): frame_header_encode(), plaintext_header_decode(), plaintext_header_encode(), Encode a FrameHeader (36 bytes). key_id: 32 bytes ciphertext_length: ui32 BE, Encode PlaintextHeader (2 bytes)., Decode PlaintextHeader. Returns (random_length, flags)., Tests for thekogans Marconi wire format implementation., TestFrameHeader (+1 more)

### Community 99 - "device_descriptor.rs"
Cohesion: 0.27
Nodes (8): ConnectionHint, DeviceDescriptor, lookup(), lookup_from_uevent(), product_id_from_uevent(), Option, test_known_pid_lookup(), test_unknown_pid_falls_back()

### Community 100 - "DPIVisualSlider"
Cohesion: 0.16
Nodes (7): DPIVisualSlider, Switch to spin button for manual DPI entry., Enter pressed - apply and switch back to label., Focus lost - apply and switch back to label., Live update slider as user changes spin value., Apply spin button value and switch back to label display., Visual DPI slider with value display

### Community 101 - "Configuration"
Cohesion: 0.08
Nodes (24): App settings and autostart, Available action values, Buttons, Configuration, Device mode and desktop environment, Display options, Easy-switch, File locations (+16 more)

### Community 102 - "_GlowView"
Cohesion: 0.18
Nodes (5): _GlowView, _Helper, Flow Edge Indicator - transparent overlay showing cursor handoff zone. A…, NSObject, NSView

### Community 104 - "LogiAgent"
Cohesion: 0.29
Nodes (3): LogiAgent, Communicate with Logi Options+ agent via its Unix socket IPC. Uses the agent's…, Switch MX Master 4 Easy-Switch to given channel (1-based). Sends the HID++…

### Community 105 - "TestJuhFlowBridgeStatusPublication"
Cohesion: 0.40
Nodes (3): Any, Test status publication through the production heartbeat path., TestJuhFlowBridgeStatusPublication

### Community 106 - "hidraw.rs"
Cohesion: 0.40
Nodes (6): long_report_with_0x41_index_is_not_a_connection_notification(), receiver_link_down_does_not_request_refresh(), receiver_link_up_requests_divert_refresh(), refresh_triggers_are_debounced(), test_handler(), wireless_status_broadcast_requests_divert_refresh()

### Community 107 - "Architecture"
Cohesion: 0.09
Nodes (23): Architecture, Build, test, run, Button divert and CIDs, Configuration and file layout, D-Bus interface, Device discovery, Feature enumeration, Features used (+15 more)

### Community 108 - "load_user_icon"
Cohesion: 0.18
Nodes (11): _is_user_icon_path(), load_actions_from_config(), load_user_icon(), Return a screenshot exec command suited to the current desktop. KDE keeps its…, Load radial menu actions from config file, Plain filesystem check - safe to call at import time, unlike load_user_icon()…, Load a user-imported app icon (absolute .svg/.png/... path) into USER_ICONS,…, resolve_screenshot_command() (+3 more)

### Community 109 - "._create_action_row"
Cohesion: 0.22
Nodes (5): _action_summary(), Create a single action row for the timeline., Human-readable one-line summary of an action., Replace delay label with a SpinButton for inline editing., _Point

### Community 110 - "Frequently Asked Questions"
Cohesion: 0.09
Nodes (22): Configuration and usage, Devices and compatibility, Display server and desktop, Do I need Logitech's own software installed?, Does it need root?, Does it work on Wayland or only X11?, Does it work over Bluetooth as well as the USB receiver?, Frequently Asked Questions (+14 more)

### Community 111 - "Contributing to JuhRadial MX"
Cohesion: 0.10
Nodes (19): Building, Code of Conduct, Code Style, Commit Messages, Contributing to JuhRadial MX, Development Setup, Getting Help, How Can I Contribute? (+11 more)

### Community 112 - "MacroAction"
Cohesion: 0.31
Nodes (9): D, MacroAction, RepeatMode, Result, Self, Deserialize, Ok, S (+1 more)

### Community 113 - "ThumbwheelConfig"
Cohesion: 0.22
Nodes (4): default_thumbwheel_speed(), ThumbwheelConfig, ThumbwheelMode, ThumbwheelOutput

### Community 114 - "DiscoveryListener"
Cohesion: 0.25
Nodes (3): DiscoveryListener, Listen for JuhRadial MX Linux peers on LAN via UDP beacons., linux_direction: which edge Linux is on (left/right/top/bottom). mac_channel:…

### Community 115 - "EdgeDetector"
Cohesion: 0.29
Nodes (3): EdgeDetector, Detect when mouse cursor hits screen edges on macOS. Uses Quartz CGEvent tap…, Poll mouse position to detect edge hits.

### Community 116 - "Installation"
Cohesion: 0.11
Nodes (19): After installing, Arch Linux / Omarchy, Build from source, Contents, Fedora, Install layout, Installation, Manual installation per distro (+11 more)

### Community 117 - "LinuxBridgeClient"
Cohesion: 0.25
Nodes (4): LinuxBridgeClient, Encrypted TCP client connecting to JuhRadial MX on Linux., Encrypt and send a message to Linux., _send_framed()

### Community 118 - "probe_settings.py"
Cohesion: 0.43
Nodes (7): connect(), find_socket(), query(), Probe Logi Options+ agent for sensitivity and scroll settings., read_frame(), recv_json(), send_json()

### Community 119 - "serialize_header_encode"
Cohesion: 0.39
Nodes (5): Encode a thekogans SerializableHeader. Format: SizeT(strlen) + type_string +…, Decode a SerializableHeader from data. Returns (type_name, version,…, serialize_header_decode(), serialize_header_encode(), TestSerializableHeader

### Community 120 - "_svg_to_pixmap"
Cohesion: 0.29
Nodes (8): _get_assets_dir(), load_ai_icons(), load_os_icons(), Get the assets directory, searching dev and installed paths., Pre-render SVG to QPixmap at fixed size (avoids huge buffer allocations)., Load SVG icons for AI submenu items (pre-rendered to QPixmap)., Load SVG icons for OS Easy-Switch submenu items (pre-rendered to QPixmap)., _svg_to_pixmap()

### Community 121 - "README.md"
Cohesion: 0.10
Nodes (19): Architecture, Capabilities, Compatibility, Configuration, Contributing, Desktop and compositor support, Device support, GitHub security (+11 more)

### Community 122 - "juhradial-mx.sh"
Cohesion: 0.46
Nodes (7): daemon_name_owned(), daemon_unit_managed(), main(), resolve_daemon(), resolve_overlay(), resolve_project_root(), juhradial-mx.sh script

### Community 123 - "test_smartshift_mapping.py"
Cohesion: 0.39
Nodes (7): _load_method(), FunctionDef, Regression tests for SmartShift sensitivity and mode readback., _scroll_page_method(), test_device_readback_uses_dbus_mode_contract_and_preserves_sensitivity(), test_easy_to_hard_maps_to_automatic_thresholds_in_order(), test_every_automatic_threshold_round_trips_exactly()

### Community 124 - "ConnectionType"
Cohesion: 0.29
Nodes (4): ConnectionType, Display, Formatter, Result

### Community 125 - "._setup_dnd"
Cohesion: 0.29
Nodes (3): Set up drag-and-drop for reordering., Visual feedback when drag starts., Handle drop - reorder actions.

### Community 126 - "RadialMenuPaintingMixin"
Cohesion: 0.14
Nodes (10): RadialMenuPaintingMixin, JuhRadial MX - Overlay Painting Mixin All drawing/rendering methods for the…, OutBack easing - slight overshoot then settle, creates 'droplet' feel., OutExpo easing - very fast start, long elegant settle., Per-slice entrance progress during the open bloom. Slices sweep in clockwise:…, Draw submenu items with droplet pop-out animation., Draw a badge shape centered at (x,y), oriented radially outward., Draw an icon on the 3D radial image with per-theme badge shape. (+2 more)

### Community 127 - "ciphertext_header_decode"
Cohesion: 0.33
Nodes (5): ciphertext_header_decode(), ciphertext_header_encode(), Encode a CiphertextHeader (8 bytes, big-endian)., Decode a CiphertextHeader. Returns (iv_len, ct_len, mac_len)., TestCiphertextHeader

### Community 128 - "settings_flow_discovery.py"
Cohesion: 0.19
Nodes (6): FlowClient, Client for connecting to another JuhRadialMX computer, get_linked_computers(), get_logi_discovery(), JuhRadial MX - Flow Discovery & Pairing FlowServiceListener (mDNS) and…, Complete the pairing process with another computer

### Community 130 - "Criterion"
Cohesion: 0.70
Nodes (4): Criterion, benchmark_action_execution(), benchmark_event_processing(), benchmark_profile_lookup()

### Community 132 - "verify_feature_safety"
Cohesion: 0.40
Nodes (4): Result, verify_feature_safety(), test_verify_feature_safety_blocklisted(), test_verify_feature_safety_onboard_profiles()

### Community 133 - "._create_insert_button"
Cohesion: 0.40
Nodes (3): Box, Create the '+' button between rows for inserting actions., Insert a default delay action at the given index.

### Community 134 - "render-star-history.py"
Cohesion: 0.60
Nodes (4): fetch_star_dates(), main(), Render the repository star-history chart to assets/github/star-history.svg.…, render()

### Community 136 - "QColor"
Cohesion: 0.19
Nodes (7): Draw subtle glow + indicator image with breathing opacity., OutCubic easing - fast start, smooth deceleration., Draw a translucent highlight on a slice for 3D mode, scaled by progress., Draw a white flash overlay on a slice for selection feedback., Draw a circular white flash on an icon for minimal mode selection feedback., Draw a floating icon without slice background (vector minimal mode)., QColor

### Community 137 - "JuhFlow - macOS Companion for JuhRadial MX"
Cohesion: 0.11
Nodes (17): Architecture, Building the SwiftUI GUI (macOS only), Channel Mapping (Julian's Setup), Connection, Device IDs, Files, Flow Indicator (flow_indicator.py), Frame Format (Receive) (+9 more)

### Community 138 - "test_startup_latency.py"
Cohesion: 0.67
Nodes (3): Regression contracts for user-visible startup latency., _splash_min_display_ms(), test_splash_does_not_mask_a_ready_application_for_two_seconds()

### Community 140 - "Changelog"
Cohesion: 0.12
Nodes (16): [0.1.0] - 2025-12-20, [0.2.11] - 2026-02-19, [0.2.2] - 2026-01-06, [0.2.3] - 2026-01-06, [0.2.6] - 2026-02-13, [0.2.8] - 2026-02-14, [0.4.2] - 2026-08-14, Added (+8 more)

### Community 149 - "hypr_logical_rect"
Cohesion: 0.26
Nodes (11): hypr_logical_rect(), Logical-pixel rect {x, y, width, height, name} for a hyprctl monitor., Hyprland portrait-monitor menu drift (issue #78). `hyprctl monitors -j` reports…, test_flipped_rotations_swap_too(), test_fractional_scale_still_truncates(), test_lower_half_of_the_portrait_monitor_is_not_clamped_to_the_bottom(), test_menu_lands_on_the_cursor_on_the_portrait_monitor(), test_missing_transform_field_behaves_as_unrotated() (+3 more)

### Community 150 - "index.md"
Cohesion: 0.45
Nodes (4): A look at it, Explore, Instalación (este fork), What is new in v0.4.4

### Community 151 - "._read_direction"
Cohesion: 0.21
Nodes (6): Disable KDE's screen edge actions for the flow edge. KDE effects (cube,…, Restore all KDE screen edge actions that were suppressed., Fade in the indicator., Fade out the indicator., Poll bridge for connected peers., Read flow config: direction, hide_indicator, monitor.

### Community 152 - "AGENTS — LLM only"
Cohesion: 0.20
Nodes (10): AGENTS — LLM only, Destructive / security, Graphify, How not to install (yet), How to build (dev, no system install), If you update this file later, RULES (this file), Source of truth map (use this first) (+2 more)

### Community 153 - "overlay_constants.py"
Cohesion: 0.18
Nodes (11): _bounding_box(), _clamp_center(), compute_ring_scale(), _map_fraction(), JuhRadial MX - Overlay Constants Geometry constants, DE detection flags, and…, Map (x, y) from rect ``src`` to rect ``dst`` by fractional position. The…, Clamp a window center so a ``half``-radius window stays inside ``rect``. All…, Union bounding box of a list of {x, y, width, height} rects. (+3 more)

### Community 154 - "__init__.py"
Cohesion: 0.10
Nodes (18): Flow edge indicator - shows a glowing bar on the screen edge where cursor…, get_juhflow_bridge(), _on_peer_key(), JuhRadialMX Flow - Multi-computer mouse/keyboard sharing Inspired by logitech-…, Re-read config and reposition the flow edge indicator., Stop all Flow servers., Callback when a new peer key is derived during pairing (server-side)., Start the global Flow server and Logi Options+ compatibility layer (+10 more)

### Community 155 - "probe_logi.py"
Cohesion: 0.43
Nodes (7): connect(), find_socket(), query(), Probe Logi Options+ agent to find correct change_host payload format., read_frame(), recv_json(), send_json()

### Community 156 - "MediaStateQuery"
Cohesion: 0.27
Nodes (5): MediaStateQuery, Release a terminal process, then service one deferred request., Run at most one non-blocking ``playerctl status`` query at a time., Start or coalesce a query without overlapping child processes., QObject

### Community 157 - "AppPickerDialog"
Cohesion: 0.22
Nodes (3): AppPickerDialog, Dialog listing installed applications, like a desktop menu's app list., Double-click / Enter on a row picks it immediately.

### Community 158 - "[0.3.1-beta] - 2026-03-13"
Cohesion: 0.40
Nodes (5): [0.3.1-beta] - 2026-03-13, Added, Changed, Fixed, Security

### Community 159 - "[0.4.0] - 2026-06-28"
Cohesion: 0.40
Nodes (5): [0.4.0] - 2026-06-28, Added, Changed, Fixed, Security

### Community 160 - "actions_use_media_state"
Cohesion: 0.29
Nodes (5): Refresh the dynamic play/pause glyph without blocking menu input., actions_use_media_state(), Asynchronous media playback-state queries for the overlay., Return whether an action tree renders the dynamic play/pause icon., test_media_icon_detection_covers_main_actions_and_submenus()

### Community 161 - "RadialMenuConfigDialog"
Cohesion: 0.33
Nodes (4): RadialMenuConfigDialog, Load the current radial menu from config, Save the radial menu configuration via ConfigManager, Dialog for configuring the radial menu slices

### Community 162 - "[0.2.0] - 2025-12-27"
Cohesion: 0.50
Nodes (4): [0.2.0] - 2025-12-27, Added, Changed, Fixed

### Community 163 - "[0.2.12] - 2026-02-27"
Cohesion: 0.50
Nodes (4): [0.2.12] - 2026-02-27, Added, Changed, Notes

### Community 164 - "[0.2.1] - 2026-01-03"
Cohesion: 0.50
Nodes (4): [0.2.1] - 2026-01-03, Changed, Fixed, Security

### Community 165 - "[0.2.5] - 2026-02-11"
Cohesion: 0.50
Nodes (4): [0.2.5] - 2026-02-11, Added, Changed, Fixed

### Community 166 - "[0.2.9] - 2026-02-18"
Cohesion: 0.50
Nodes (4): [0.2.9] - 2026-02-18, Added, Changed, Fixed

### Community 167 - "[0.3.0-beta] - 2026-03-07"
Cohesion: 0.50
Nodes (4): [0.3.0-beta] - 2026-03-07, Added, Changed, Fixed

### Community 168 - "[0.3.2-beta] - 2026-03-24"
Cohesion: 0.50
Nodes (4): [0.3.2-beta] - 2026-03-24, Added, Changed, Fixed

### Community 169 - "ThemePreview"
Cohesion: 0.38
Nodes (3): _hex_rgb(), Live preview card: an Actions Ring rendered in the selected theme's colors, so…, ThemePreview

### Community 170 - "[0.2.10] - 2026-02-19"
Cohesion: 0.67
Nodes (3): [0.2.10] - 2026-02-19, Changed, Fixed

### Community 171 - "[0.2.4] - 2026-02-08"
Cohesion: 0.67
Nodes (3): [0.2.4] - 2026-02-08, Added, Fixed

### Community 172 - "[0.2.7] - 2026-02-13"
Cohesion: 0.67
Nodes (3): [0.2.7] - 2026-02-13, Added, Fixed

### Community 173 - "[0.4.1] - 2026-07-21"
Cohesion: 0.67
Nodes (3): [0.4.1] - 2026-07-21, Added, Fixed

### Community 174 - "[0.4.3] - 2026-08-15"
Cohesion: 0.67
Nodes (3): [0.4.3] - 2026-08-15, Added, Changed

### Community 175 - "[0.4.4] - 2026-08-18"
Cohesion: 0.67
Nodes (3): [0.4.4] - 2026-08-18, Changed, Fixed

### Community 176 - "[Unreleased]"
Cohesion: 0.67
Nodes (3): Added, Fixed, [Unreleased]

### Community 179 - ".start"
Cohesion: 0.33
Nodes (3): Start listening for discovery requests and broadcasting our presence, Start the UDP listener socket, Start the UDP broadcast sender

### Community 180 - "setup_i18n"
Cohesion: 0.33
Nodes (5): get_configured_language(), Read language from config.json, fallback to 'system'., Initialize gettext with configured or system language. Returns _() function., setup_i18n(), Reload translations immediately when settings changes language.

### Community 182 - "GitHub security controls"
Cohesion: 0.40
Nodes (4): GitHub security controls, Limits and rollback, Verified server changes, Workflow changes and verification

### Community 183 - "get_flow_server"
Cohesion: 0.40
Nodes (3): get_flow_server(), Handle click on Link button to pair with another computer, Show a dialog to pair with another computer

### Community 184 - "open_settings"
Cohesion: 0.40
Nodes (5): open_settings(), Keep the legacy relaunch only outside KDE Plasma. KDE Plasma reliably presents…, Launch or refocus the settings dashboard. KDE's single-instance activation…, _requires_settings_relaunch(), test_kde_settings_launch_activates_without_process_checks()

## Knowledge Gaps
- **253 isolated node(s):** `juhradiald`, `SwiftUI`, `AppKit`, `.body`, `.linuxOffset` (+248 more)
  These have ≤1 connection - possible missing edges or undocumented components. (Counts symbols only; 1485 node(s) total have ≤1 connection when file, concept and rationale nodes are included.)
- **22 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `_Error` connect `_Error` to `Config`, `actions.rs`, `profiles.rs`, `ThemeManager`, `EvdevHandler`, `DpiManager`, `MacroRecorder`, `storage.rs`, `.new`, `.new`, `ActionPalette`, `HidppDevice`, `KWinScriptError`?**
  _High betweenness centrality (0.465) - this node is a cross-community bridge._
- **Are the 4 inferred relationships involving `MacrosPage` (e.g. with `SettingsWindow` and `MacroEditorDialog`) actually correct?**
  _`MacrosPage` has 4 INFERRED edges - model-reasoned connections that need verification._
- **What connects `juhradiald`, `SwiftUI`, `AppKit` to the rest of the system?**
  _253 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `main.rs` be split into smaller, more focused modules?**
  _Cohesion score 0.0531883632089333 - nodes in this community are weakly interconnected._
- **Should `settings_dashboard.py` be split into smaller, more focused modules?**
  _Cohesion score 0.037886510363574585 - nodes in this community are weakly interconnected._
- **Should `actions.rs` be split into smaller, more focused modules?**
  _Cohesion score 0.06519114688128773 - nodes in this community are weakly interconnected._
- **Should `profiles.rs` be split into smaller, more focused modules?**
  _Cohesion score 0.08484848484848485 - nodes in this community are weakly interconnected._