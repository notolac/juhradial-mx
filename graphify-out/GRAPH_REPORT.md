# Graph Report - juhradial-mx  (2026-09-17)

## Corpus Check
- cluster-only mode — file stats not available

## Summary
- 3575 nodes · 6994 edges · 149 communities (132 shown, 15 thin omitted)
- Extraction: 97% EXTRACTED · 3% INFERRED · 0% AMBIGUOUS · INFERRED: 187 edges (avg confidence: 0.89)
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `396f3e61`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- Community 0
- Community 1
- Community 2
- Community 3
- Community 4
- Community 5
- Community 6
- Community 7
- Community 8
- Community 9
- Community 10
- Community 11
- Community 13
- Community 14
- Community 15
- Community 16
- Community 17
- Community 18
- Community 19
- Community 20
- Community 21
- Community 22
- Community 23
- Community 24
- Community 25
- Community 26
- Community 27
- Community 28
- Community 29
- Community 30
- Community 31
- Community 32
- Community 33
- Community 34
- Community 35
- Community 36
- Community 37
- Community 38
- Community 39
- Community 40
- Community 41
- Community 42
- Community 43
- Community 44
- Community 45
- Community 46
- Community 47
- Community 48
- Community 49
- Community 50
- Community 51
- Community 52
- Community 53
- Community 54
- Community 55
- Community 56
- Community 57
- Community 58
- Community 59
- Community 60
- Community 61
- Community 62
- Community 63
- Community 64
- Community 65
- Community 66
- Community 67
- Community 68
- Community 69
- Community 70
- Community 71
- Community 72
- Community 73
- Community 74
- Community 75
- Community 76
- Community 77
- Community 78
- Community 79
- Community 80
- Community 81
- Community 82
- Community 83
- Community 84
- Community 85
- Community 86
- Community 87
- Community 88
- Community 89
- Community 90
- Community 91
- Community 92
- Community 93
- Community 94
- Community 95
- Community 96
- Community 97
- Community 98
- Community 99
- Community 100
- Community 101
- Community 102
- Community 103
- Community 104
- Community 105
- Community 106
- Community 107
- Community 108
- Community 109
- Community 110
- Community 111
- Community 112
- Community 113
- Community 114
- Community 115
- Community 116
- Community 117
- Community 118
- Community 119
- Community 120
- Community 121
- Community 122
- Community 123
- Community 124
- Community 125
- Community 126
- Community 127
- Community 128
- Community 129
- Community 130
- Community 131
- Community 132
- Community 133
- Community 134
- Community 135
- Community 136
- Community 137
- Community 138
- Community 139
- Community 140
- Community 141
- Community 142
- Community 143
- Community 144
- Community 145
- Community 146
- Community 148

## God Nodes (most connected - your core abstractions)
1. `HapticManager` - 59 edges
2. `JuhRadialService` - 59 edges
3. `HidppDevice` - 53 edges
4. `MacrosPage` - 51 edges
5. `ScrollPage` - 48 edges
6. `SettingsWindow` - 40 edges
7. `FlowPage` - 39 edges
8. `EvdevHandler` - 37 edges
9. `HidrawHandler` - 37 edges
10. `HapticError` - 37 edges

## Surprising Connections (you probably didn't know these)
- `test_second_monitor_center_no_clamp()` --calls--> `map_and_clamp_menu()`  [INFERRED]
  tests/test_kde_placement.py → overlay/overlay_constants.py
- `test_submenu_app_entry_without_command_is_skipped()` --calls--> `submenu_from_config()`  [INFERRED]
  tests/test_app_icon_picker.py → overlay/overlay_actions.py
- `test_restart_requested_after_bounded_stop_replaces_cancelled_start()` --uses--> `ScreenEdgeDetector`  [INFERRED]
  tests/test_flow_edge_polling.py → overlay/flow/edge_detector.py
- `test_stop_cancels_a_start_blocked_in_config_before_owner_discard()` --uses--> `ScreenEdgeDetector`  [INFERRED]
  tests/test_flow_edge_polling.py → overlay/flow/edge_detector.py
- `test_stop_deadline_retains_handoff_during_a_blocked_callback()` --uses--> `ScreenEdgeDetector`  [INFERRED]
  tests/test_flow_edge_polling.py → overlay/flow/edge_detector.py

## Import Cycles
- 1-file cycle: `daemon/src/hidpp/patterns.rs -> daemon/src/hidpp/patterns.rs`

## Communities (149 total, 15 thin omitted)

### Community 0 - "Community 0"
Cohesion: 0.05
Nodes (63): claim_name(), init_dbus_service(), init_dbus_service_with_device(), Arc, Connection, Mutex, Result, SharedBatteryState (+55 more)

### Community 1 - "Community 1"
Cohesion: 0.05
Nodes (56): get_configured_language(), JuhRadial MX - Internationalization (i18n) Module Thin wrapper around Python's…, Read language from config.json, fallback to 'system'., Initialize gettext with configured or system language. Returns _() function., Reload translations and patch _ in all imported settings modules., reload_language(), setup_i18n(), clear_device_mode_cache() (+48 more)

### Community 2 - "Community 2"
Cohesion: 0.07
Nodes (52): Command, a_process_value_wins_over_the_session_one(), Action, ActionError, ActionExecutor, ActionType, an_unset_or_empty_process_value_falls_back_to_the_session(), apply_session_env() (+44 more)

### Community 3 - "Community 3"
Cohesion: 0.08
Nodes (42): apply_hardware_profile(), create_default_profile(), ensure_config_dir(), ensure_config_dir_at(), get_config_dir(), get_profiles_path(), HardwareProfile, load_hardware_profiles() (+34 more)

### Community 4 - "Community 4"
Cohesion: 0.05
Nodes (35): BatteryError, BatteryHandler, BatteryState, new_shared_state(), Arc, Display, File, Formatter (+27 more)

### Community 5 - "Community 5"
Cohesion: 0.08
Nodes (5): JuhRadialService, Result, String, Vec, SignalEmitter

### Community 6 - "Community 6"
Cohesion: 0.09
Nodes (34): active_handler(), consecutive_two_axis_frames_emit_final_coordinates_once_per_frame(), cursor_events(), cursor_movement_is_coalesced_until_syn_report(), DeviceInfo, dropped_frame_discards_pending_cursor_movement(), dropped_x_does_not_leak_into_a_later_valid_y_frame(), EvdevError (+26 more)

### Community 7 - "Community 7"
Cohesion: 0.05
Nodes (39): Flow protocol constants and configuration, Screen edge cursor monitoring with dwell detection. Polls cursor position and…, Start the polling thread., Claim one queued start after an invalidated reservation clears., Start one reserved poll generation with ``_lifecycle_lock`` held., Wait off the UI thread before replacing a stopping generation., Invalidate callbacks, request stop, and report lifecycle quiescence., Suppress edge detection for ms milliseconds (prevents bounce-back). (+31 more)

### Community 8 - "Community 8"
Cohesion: 0.07
Nodes (37): GamingMode, new_shared_gaming_mode(), Option, Self, SharedGamingMode, SharedHapticManager, String, test_dpi_manager_access() (+29 more)

### Community 9 - "Community 9"
Cohesion: 0.08
Nodes (33): AccessibilitySettings, EffectiveAnimationTimings, Default, Option, Self, test_default_settings(), test_default_timings(), test_high_contrast_override() (+25 more)

### Community 10 - "Community 10"
Cohesion: 0.07
Nodes (41): new_shared_config(), JuhRadialService, Arc, Mutex, Self, SharedBatteryState, SharedConfig, SharedDeviceName (+33 more)

### Community 11 - "Community 11"
Cohesion: 0.07
Nodes (8): HapticManager, Default, Option, Result, Self, String, Vec, HapticPulse

### Community 13 - "Community 13"
Cohesion: 0.06
Nodes (28): Return whether clipboard sharing is enabled (flow.share_clipboard). Read fresh…, sharing_enabled(), FlowHandoffManager, Cursor handoff orchestrator - connects edge detection to presence channel. When…, Get monitor geometry from xrandr (thread-safe, no Qt needed)., Get flow monitor geometry (thread-safe). Uses cached value from main-thread…, Establish outgoing presence connection to a peer., Set which screen edge a peer is mapped to. (+20 more)

### Community 14 - "Community 14"
Cohesion: 0.06
Nodes (27): get_device_mode(), Get device mode: 'logitech' or 'generic'. Returns 'generic' only when the user…, JuhRadial MX - Devices Page DevicesPage: Device information and management.…, PlaceholderPage, Placeholder for unimplemented pages, GamingPage, JuhRadial MX - Gaming Mode Page Gaming mode settings: master toggle, overlay…, Create an editable DPI profile row. (+19 more)

### Community 15 - "Community 15"
Cohesion: 0.05
Nodes (24): Show a toast notification, Pause/resume polling timers when window visibility changes., Clean up resources when window is closed, Initialize D-Bus connection to daemon, Setup UPower D-Bus signals for instant battery charging updates, Handle UPower property changes - triggers instant battery update, Handle UPower device added/removed - charger connected/disconnected, Fire one desktop notification when the mouse battery gets low. Resets once… (+16 more)

### Community 16 - "Community 16"
Cohesion: 0.07
Nodes (40): App, AppKit, Bool, CGFloat, Color, Content, Context, Double (+32 more)

### Community 17 - "Community 17"
Cohesion: 0.06
Nodes (18): FlowPage, Flow multi-computer control settings page, Enable/disable the edge-dependent controls in one place., Handle the cross-screen cursor (Flow master) toggle., Restart the overlay (debounced) so it applies the saved Flow config in its own…, Persist the peer direction and re-apply Flow via the overlay. Only saves config…, Reflect the active direction in the segmented control (no recursion)., Drive direction_dropdown (the authoritative model) from the segments. (+10 more)

### Community 18 - "Community 18"
Cohesion: 0.07
Nodes (35): connect(), find_socket(), query(), Probe Logi Options+ agent to find correct change_host payload format., read_frame(), recv_json(), send_json(), build_encrypted_packet() (+27 more)

### Community 19 - "Community 19"
Cohesion: 0.07
Nodes (8): Set parent window reference (deferred from constructor)., _hex_rgb(), MacrosPage, Macro studio: library + run behaviour + live timeline., Reload macros from disk and rebuild the library list., Sync the right column + behaviour card to the selected macro., Return (label, sub) for a step chip, or None to skip (delays/key-up)., Parse '#rrggbb' to an (r, g, b) float tuple.

### Community 20 - "Community 20"
Cohesion: 0.10
Nodes (32): ChildStdout, hyprland_loop(), hyprland_socket2_path(), install_kwin_script(), parse_active_window_id(), parse_wm_class(), read_xprop_class_output(), Child (+24 more)

### Community 21 - "Community 21"
Cohesion: 0.08
Nodes (30): fixture, Refresh the dynamic play/pause glyph without blocking menu input., actions_use_media_state(), MediaStateQuery, Asynchronous media playback-state queries for the overlay., Release a terminal process, then service one deferred request., Run at most one non-blocking ``playerctl status`` query at a time., Start or coalesce a query without overlapping child processes. (+22 more)

### Community 22 - "Community 22"
Cohesion: 0.08
Nodes (20): RadialMenu, Log an asynchronous haptic reply and release its watcher., Ambient tick: pulse when the cursor lands on a different monitor. Runs…, Scale the ring window to the monitor it is shown on. Drawing stays in logical…, One-shot 1px move-and-restore to force a single KWin recomposite. Fired once…, Set circular window mask on KDE to eliminate rectangular artifact., Update animation state for smooth hover transitions., Handle HideMenu signal - determine tap vs hold based on time elapsed. (+12 more)

### Community 23 - "Community 23"
Cohesion: 0.07
Nodes (22): ActionPalette, DelayInputDialog, KeyCaptureDialog, MouseActionDialog, Create a styled palette button with icon and label., Send action to the timeline., Open key capture dialog., Open mouse button selector dialog. (+14 more)

### Community 24 - "Community 24"
Cohesion: 0.08
Nodes (38): Invoke the current callback only for a still-active poll generation., Check if cursor is at a screen edge and handle dwell detection., get_all_monitors_logical(), get_cursor_pos(), get_cursor_position_gnome(), get_cursor_position_hyprland(), get_cursor_position_qt(), _get_gnome_cursor_proxy() (+30 more)

### Community 25 - "Community 25"
Cohesion: 0.11
Nodes (7): HidppDevice, File, HashMap, Option, Path, Self, String

### Community 26 - "Community 26"
Cohesion: 0.08
Nodes (33): derive_shared_secret(), Flow client for connecting to another JuhRadialMX computer, derive_aes_key(), derive_shared_secret(), generate_node_id(), generate_x25519_keypair(), Generate X25519 private key, return (private_key, public_key_bytes_32)., X25519 ECDH -> 32-byte shared secret. (+25 more)

### Community 27 - "Community 27"
Cohesion: 0.07
Nodes (16): get_clipboard(), Clipboard helpers for Flow (supports Wayland and X11), Get clipboard contents (supports Wayland and X11), Set clipboard contents (supports Wayland and X11). Retries on failure since wl-…, Single attempt to set clipboard., set_clipboard(), _try_set_clipboard(), FlowTokenManager (+8 more)

### Community 28 - "Community 28"
Cohesion: 0.11
Nodes (20): BlurMode, FrameMetrics, PerformanceMonitor, Default, Duration, Instant, Self, VecDeque (+12 more)

### Community 29 - "Community 29"
Cohesion: 0.09
Nodes (22): AnimationSettings, default_accent_secondary(), default_error(), default_idle_effect(), default_shadow(), default_success(), default_text_secondary(), default_version() (+14 more)

### Community 30 - "Community 30"
Cohesion: 0.12
Nodes (36): _bounding_box(), _clamp_center(), hyprland_menu_center(), map_and_clamp_menu(), _map_fraction(), map_logical_to_screen(), JuhRadial MX - Overlay Constants Geometry constants, DE detection flags, and…, Map (x, y) from rect ``src`` to rect ``dst`` by fractional position. The… (+28 more)

### Community 31 - "Community 31"
Cohesion: 0.07
Nodes (20): MacroEditorDialog, _mouse_button_name(), Human-readable name for a GDK mouse button number., Populate UI from macro dict., Save macro and close., Show/hide repeat count and sequence tabs based on mode., Handle sequence tab toggle., Handle timeline selection change. (+12 more)

### Community 32 - "Community 32"
Cohesion: 0.09
Nodes (13): MacroRecorderDialog, Recording dialog that captures keyboard/mouse events. Workflow: Countdown…, Start macro recording via daemon D-Bus if available., Stop D-Bus macro recording., Handle macro event from daemon D-Bus signal., Add a recorded event to the list., Add a visual row to the live events list., Draw status indicator: countdown number, pulsing dot, or checkmark. (+5 more)

### Community 33 - "Community 33"
Cohesion: 0.07
Nodes (15): Vec, test_action_for_cid(), test_buttons_config_defaults_match_settings_ui(), test_config_serialization(), test_default_config(), test_haptic_config_defaults(), test_haptic_config_slice_debounce_defaults(), test_haptic_disabled_check() (+7 more)

### Community 34 - "Community 34"
Cohesion: 0.07
Nodes (22): FlowClient, Client for connecting to another JuhRadialMX computer, Flow edge indicator - shows a glowing bar on the screen edge where cursor…, get_flow_server(), get_juhflow_bridge(), get_linked_computers(), get_logi_discovery(), _on_peer_key() (+14 more)

### Community 35 - "Community 35"
Cohesion: 0.11
Nodes (22): Arc, Display, Duration, Formatter, HashSet, Instant, Mutex, Option (+14 more)

### Community 36 - "Community 36"
Cohesion: 0.08
Nodes (17): FlowEdgeIndicator, QWidget, Load the flow indicator PNG from assets., Set which edge to show the indicator on and position it., Return the correct pixmap for the current direction., Get geometry of the configured monitor. "" (auto/default) = original cursor-…, Position the widget on the configured screen edge., Disable KDE's screen edge actions for the flow edge. KDE effects (cube,… (+9 more)

### Community 37 - "Community 37"
Cohesion: 0.17
Nodes (34): build_project(), check_desktop(), check_existing_install(), check_logitech_device(), check_root(), check_wayland(), clone_repo(), configure_desktop() (+26 more)

### Community 38 - "Community 38"
Cohesion: 0.08
Nodes (17): Reload translations immediately when settings changes language., _hex_rgb(), General settings page, Handle DE selection change - saves preference., Apply DE-specific default commands to radial menu slices., Handle theme selection change - applies to both overlay and settings, Reload CSS with new theme colors, Path to the juhradial-mx launcher, preferring one that exists. Covers the dev… (+9 more)

### Community 39 - "Community 39"
Cohesion: 0.09
Nodes (28): hex_to_qcolor(), load_minimal_mode(), load_radial_image(), load_theme(), JuhRadial MX - Overlay Actions & Theme Bridge Theme loading, action…, Convert hex color string to QColor, Load theme from config and convert to QColor objects, Read radial.minimal_mode from config.json. Returns bool. (+20 more)

### Community 40 - "Community 40"
Cohesion: 0.08
Nodes (18): get_presence_server(), JuhFlowBridge, Start the bridge server and discovery broadcaster., Send an edge hit event to all connected JuhFlow peers., Send clipboard content to peers., Request device channel switch on peer., Return list of connected peers., Send message to all connected peers. (+10 more)

### Community 41 - "Community 41"
Cohesion: 0.09
Nodes (12): ConnectionState, PathBuf, HapticEvent, HapticPattern, Mx4HapticPattern, PerEventPattern, Default, Display (+4 more)

### Community 42 - "Community 42"
Cohesion: 0.07
Nodes (18): _free_port(), _make_bridge(), Create a bridge on a free port with discovery disabled., Test X25519 handshake between bridge server and simulated Mac client., Handshake should exchange pubkeys and derive matching AES keys., Bridge should register the peer after successful handshake., Test reconnect behavior after disconnect., After disconnect, new client should connect with fresh handshake. (+10 more)

### Community 43 - "Community 43"
Cohesion: 0.13
Nodes (15): RadialMenuPaintingMixin, OutBack easing - slight overshoot then settle, creates 'droplet' feel., OutCubic easing - fast start, smooth deceleration., OutExpo easing - very fast start, long elegant settle., Per-slice entrance progress during the open bloom. Slices sweep in clockwise:…, Draw submenu items with droplet pop-out animation., Draw a translucent highlight on a slice for 3D mode, scaled by progress., Draw a white flash overlay on a slice for selection feedback. (+7 more)

### Community 44 - "Community 44"
Cohesion: 0.08
Nodes (16): LogiFlowDiscoveryResponder, Add or update a peer's AES key for encrypted discovery., Remove a peer's AES key., Start listening for discovery requests and broadcasting our presence, Stop listening and broadcasting, Start the UDP listener socket, Start the UDP broadcast sender, Main loop listening for discovery requests (+8 more)

### Community 45 - "Community 45"
Cohesion: 0.19
Nodes (27): delete_macro(), delete_macro_from(), ensure_macros_dir(), load_all_macros(), load_all_macros_from(), load_macro(), load_macro_file(), macros_dir() (+19 more)

### Community 46 - "Community 46"
Cohesion: 0.09
Nodes (16): FlowDiscoveryMixin, Mixin providing network discovery and pairing methods for FlowPage. Expects the…, Scan network for other computers running JuhRadialMX, Complete the network scan, Get connected JuhFlow bridge peers (Mac/Win companion apps)., Get set of IPs of connected JuhFlow bridge peers., Discover other computers on the network running JuhRadialMX, Input Leap, or…, Clean up any active Zeroconf instance (+8 more)

### Community 47 - "Community 47"
Cohesion: 0.09
Nodes (15): JuhFlowApp, Main JuhFlow application controller., Start JuhFlow. If linux_ip provided, connect directly. Otherwise discover., Listen for Ctrl+Shift+Arrow to switch machines., Send edge_hit + device_switch to Linux., Send Easy-Switch ChangeHost command, toggle BT off briefly as insurance., Establish encrypted bridge to Linux JuhRadial MX., Auto-connect to first discovered Linux peer. (+7 more)

### Community 48 - "Community 48"
Cohesion: 0.10
Nodes (23): delete_macro(), duplicate_macro(), ensure_macros_dir(), get_macros_dir(), load_all_macros(), load_macro(), new_macro_template(), Path (+15 more)

### Community 49 - "Community 49"
Cohesion: 0.10
Nodes (25): load_user_icon(), Load a user-imported app icon (absolute .svg/.png/... path) into USER_ICONS,…, command_for_app(), _is_terminal_app(), JuhRadial MX - Application Picker AppPickerDialog lists installed applications…, Return a plain shell command for launching app_info., True for Terminal=true entries (htop, vim, ...): launched directly via Popen…, Resolve app_info's icon to a real image file and cache a copy under the config… (+17 more)

### Community 50 - "Community 50"
Cohesion: 0.10
Nodes (15): translate_radial_label(), ButtonsPage, Create a premium styled button assignment row, Buttons configuration page - Premium UI Design, Handle button configuration click, Refresh the button action labels after config change, Get the current radial menu slices from config, Create a compact slice row widget (+7 more)

### Community 51 - "Community 51"
Cohesion: 0.10
Nodes (11): AppPickerDialog, Dialog listing installed applications, like a desktop menu's app list., Double-click / Enter on a row picks it immediately., Dialog for configuring a single radial menu slice, Apply a preset action, Handle action type change, Show/hide command entry based on action type, Render a submenu row as pointing at an app: read-only display text. (+3 more)

### Community 52 - "Community 52"
Cohesion: 0.13
Nodes (5): HapticsPage, _hex_rgb(), Parse '#rrggbb' to a (r, g, b) float tuple., Static damped actuator pulse shape in [-1, 1] for the preset. The carrier…, Haptic feedback settings page - MX Master 4 haptic patterns

### Community 53 - "Community 53"
Cohesion: 0.13
Nodes (21): get_system_themes_dir(), get_user_themes_dir(), Display, Formatter, Path, PathBuf, Result, scan_themes_directory() (+13 more)

### Community 54 - "Community 54"
Cohesion: 0.11
Nodes (13): Toggle grid view for application profiles, ApplicationProfilesGridDialog, AppProfileSlicesDialog, Grid view dialog for per-application profiles, Load profiles dict from profiles.json, Save profiles dict to profiles.json atomically, Create a card widget for one app profile, Remove one app profile (+5 more)

### Community 55 - "Community 55"
Cohesion: 0.14
Nodes (12): MacroTimeline, Replace entire action list and rebuild the UI., Return current actions list., Add an action at the end (or after selected)., Insert an action at a specific index., Remove action at index., Duplicate the action at index, inserting after it., Move action from one position to another. (+4 more)

### Community 56 - "Community 56"
Cohesion: 0.11
Nodes (10): DevicesPage, Build the connection + (optionally) battery rows for the loaded state., Populate the LoadingState with connection + battery info via D-Bus., Device information and management page, Card reflecting live HID++ state pushed by the daemon., Pull initial values so the readouts are populated before any signal., Three-state wheel label from the daemon's (enabled, threshold). (True, 1-254) =…, Detect connection type for a generic (non-Logitech) mouse. Checks… (+2 more)

### Community 57 - "Community 57"
Cohesion: 0.13
Nodes (15): default_repeat_count(), default_standard_delay(), default_use_standard_delay(), events_to_actions(), MacroAction, MacroConfig, RawAction, RepeatMode (+7 more)

### Community 58 - "Community 58"
Cohesion: 0.09
Nodes (20): create_tray_icon(), QWidget, Premium loading splash for JuhRadial MX startup., Create system tray icon with menu, # NOTE: Cannot import settings_config here - it imports GTK4 (gi), JuhRadial MX - PyQt6 Radial Menu Overlay Listens for MenuRequested signal and…, Mark app loading as done. Splash stays until min time + daemon ready., Block until the X server behind $DISPLAY accepts connections. On a cold boot… (+12 more)

### Community 59 - "Community 59"
Cohesion: 0.13
Nodes (13): AtomicU64, clones_share_one_flag(), cursor_backend(), CursorBackend, KWinAvailability, KWinScripting, owner_loss_and_recovery_update_state(), Arc (+5 more)

### Community 60 - "Community 60"
Cohesion: 0.10
Nodes (13): ConfigManager, Set callback for showing toast notifications, Show toast if callback is set, Load config from file or return defaults. On first run (de_defaults_applied is…, Reload config from disk - useful when settings window reopens, Deep merge loaded config with defaults, Recursively update base dict with updates, Save config to file atomically and notify daemon (+5 more)

### Community 61 - "Community 61"
Cohesion: 0.12
Nodes (10): gdk_button_to_evdev(), parse_trigger(), HashMap, Option, Self, String, Vec, test_trigger_map_empty() (+2 more)

### Community 62 - "Community 62"
Cohesion: 0.13
Nodes (9): cid_to_evdev_keycode(), evdev_keycode_to_cid(), HidrawHandler, File, Instant, Option, PathBuf, SharedConfig (+1 more)

### Community 63 - "Community 63"
Cohesion: 0.21
Nodes (20): effective_delay(), execute_action(), execute_actions_once(), release_stuck_keys(), Duration, Self, synthesize_key(), synthesize_mouse() (+12 more)

### Community 64 - "Community 64"
Cohesion: 0.19
Nodes (10): Config, ConfigError, load_shared_config(), Formatter, Option, PathBuf, Result, Self (+2 more)

### Community 65 - "Community 65"
Cohesion: 0.18
Nodes (14): battery_status_label(), decode_battery(), decode_dpi(), decode_host(), decode_ratchet(), decode_wireless_status(), HardwareNotification, NotificationIndices (+6 more)

### Community 66 - "Community 66"
Cohesion: 0.14
Nodes (7): Sensitivity settings - pointer, scroll wheel, and thumb wheel. Layout matches…, Switch to spin button for manual sensitivity entry., Coalesced speed apply: reload config only (no redundant divert)., Direction and speed only matter when the wheel is diverted., Push thumb-wheel config to the daemon. SetThumbwheelReporting toggles the HID++…, Get a cached D-Bus proxy to the daemon., ScrollPage

### Community 67 - "Community 67"
Cohesion: 0.13
Nodes (9): Result, HapticError, Display, Formatter, From, Option, Result, Self (+1 more)

### Community 68 - "Community 68"
Cohesion: 0.15
Nodes (17): JuhFlow - macOS menubar companion app for JuhRadial MX Flow. Monitors mouse…, _recv_framed(), _send_framed(), build_encrypted_packet(), decrypt_payload(), derive_aes_key(), encrypt_payload(), generate_keypair() (+9 more)

### Community 69 - "Community 69"
Cohesion: 0.10
Nodes (13): get_nav_items_for_mode(), Return NAV_ITEMS filtered by device mode. In 'generic' mode, Logitech-only tabs…, Advance breathing cycle and redraw the heart., Draw a glowing heart with Cairo., Parse '#rrggbb' to (r, g, b) floats 0..1., Open PayPal donation link, Show confirmation dialog, then kill daemon + overlay + settings., Mixin providing sidebar creation and related methods for SettingsWindow. (+5 more)

### Community 70 - "Community 70"
Cohesion: 0.20
Nodes (14): _MenuHarness, _MouseEvent, _radial_menu_method(), Behavioral regressions for stable submenu repaint scheduling., test_changing_the_highlighted_subitem_repaints_once(), test_changing_the_highlighted_subitem_triggers_haptic(), test_clearing_a_real_submenu_highlight_repaints_once(), test_clearing_the_highlighted_subitem_does_not_trigger_haptic() (+6 more)

### Community 71 - "Community 71"
Cohesion: 0.17
Nodes (15): BundledThemeInfo, get_bundled_theme(), get_bundled_theme_info(), get_default_theme(), is_bundled_theme(), list_bundled_themes(), Option, Vec (+7 more)

### Community 72 - "Community 72"
Cohesion: 0.20
Nodes (15): trigger_kwin_cursor_script(), Call, cursor_script_uses_native_load_run_and_unload_calls(), dispatched_run_error_suppresses_handler_fallback_and_still_cleans_up(), kwin_peer(), rejected_load_preserves_pre_dispatch_handler_fallback(), Arc, Connection (+7 more)

### Community 73 - "Community 73"
Cohesion: 0.23
Nodes (12): batch_divert_scans_controls_once_and_returns_only_successful_cids(), batch_divert_skips_io_for_an_empty_request(), batch_divert_stops_when_control_count_is_unavailable(), ButtonDivertIo, control_response(), count_response(), MockButtonDivertIo, Request (+4 more)

### Community 74 - "Community 74"
Cohesion: 0.13
Nodes (17): _is_user_icon_path(), _link_icon_for_url(), load_actions_from_config(), Pick a submenu icon id for a quick-link URL., Build a submenu from configured quick links, or None if unusable. ``items`` is…, Return a screenshot exec command suited to the current desktop. KDE keeps its…, Load radial menu actions from config file, Plain filesystem check - safe to call at import time, unlike load_user_icon()… (+9 more)

### Community 75 - "Community 75"
Cohesion: 0.17
Nodes (16): open_settings(), Keep the legacy relaunch only outside KDE Plasma. KDE Plasma reliably presents…, Launch or refocus the settings dashboard. KDE's single-instance activation…, _requires_settings_relaunch(), _calls_named(), _load_device_settings_method(), FunctionDef, Regression contracts for a responsive Settings window startup. (+8 more)

### Community 76 - "Community 76"
Cohesion: 0.16
Nodes (17): generate_css(), JuhRadial MX - Settings CSS Design system: "PHOSPHOR" — an obsidian instrument…, best_text_color(), contrast_ratio(), ensure_contrast(), _hex_to_rgb(), Text legibility helpers for rich backgrounds (pure Python, no Qt). WCAG-based…, WCAG relative luminance (0..1) for an (r, g, b) 0..255 tuple. (+9 more)

### Community 77 - "Community 77"
Cohesion: 0.17
Nodes (12): default_confirm(), default_invalid(), default_menu_appear(), default_monitor_switch(), default_pattern(), default_slice_change(), default_theme(), default_window_switch() (+4 more)

### Community 78 - "Community 78"
Cohesion: 0.15
Nodes (9): LogiFlowRequestHandler, LogiFlowServer, BaseHTTPRequestHandler, HTTPServer, Logi Options+ HTTP server on port 59866 (secure peer control channel), Handle Logi Options+ Flow requests on port 59866, HTTP server compatible with Logi Options+ Flow protocol, _ReusableHTTPServer (+1 more)

### Community 79 - "Community 79"
Cohesion: 0.13
Nodes (6): GenericMouseVisualization, MouseVisualization, Interactive mouse visualization with hoverable button labels, Mouse image visualization for generic (non-Logitech) mice. Shows…, Track hover over button labels., Handle click on a button label.

### Community 80 - "Community 80"
Cohesion: 0.19
Nodes (11): Encode a value using thekogans SizeT prefix-varint format. Encoding uses…, Decode a SizeT value from data at offset. Returns (value, bytes_consumed)., sizet_decode(), sizet_encode(), Test thekogans SizeT variable-length integer encoding., Values 0-127 should encode as single byte., Values 128-16383 should encode as 2 bytes., Larger values should use 3+ bytes. (+3 more)

### Community 81 - "Community 81"
Cohesion: 0.12
Nodes (9): Test encrypted message exchange after handshake., Server should decrypt client messages correctly., Edge hit from Mac client should trigger the on_edge_hit callback., Clipboard message from Mac should trigger on_clipboard callback., Server should send encrypted messages to connected client., Server clipboard message should arrive at client., Client should receive heartbeats from server within ~6 seconds., Multiple messages should all be delivered in order. (+1 more)

### Community 82 - "Community 82"
Cohesion: 0.20
Nodes (9): HidrawError, Display, Formatter, Path, Result, Self, Sender, test_hidraw_close_resets_connection_state() (+1 more)

### Community 83 - "Community 83"
Cohesion: 0.19
Nodes (9): MacroEngine, Arc, AtomicBool, Default, JoinHandle, Option, run_playback(), PlaybackState (+1 more)

### Community 84 - "Community 84"
Cohesion: 0.20
Nodes (13): hover_gate(), hover_is_armed(), True once the pointer has moved clear of `anchor`, an (dx, dy) pair. Offsets…, Whether `source` may highlight a slice yet, updating its anchor state.…, Radial menu opening with an option already selected (issue #60). The menu…, test_a_source_stays_armed_once_it_has_moved(), test_deliberate_move_arms(), test_diagonal_jitter_uses_euclidean_distance() (+5 more)

### Community 85 - "Community 85"
Cohesion: 0.15
Nodes (8): Open button configuration dialog for generic mouse buttons, Open button configuration dialog, Refresh UI after dialog closes, ButtonConfigDialog, _group_label(), Dialog for configuring a mouse button action, Handle row click - update checkmark and selection, Restore button to default action

### Community 86 - "Community 86"
Cohesion: 0.20
Nodes (4): HidppLongMessage, HidppShortMessage, Option, Self

### Community 87 - "Community 87"
Cohesion: 0.24
Nodes (7): GlassmorphismSettings, HashMap, Option, Vec, Theme, ThemeManager, ThemeOverrides

### Community 88 - "Community 88"
Cohesion: 0.15
Nodes (6): FlowPresenceServer, Send an encrypted message to a connected peer., Send an encrypted message to all connected peers., Send a length-prefixed message., Encrypted TCP presence server. On connection: peer sends 32-byte node_id,…, _send_framed()

### Community 89 - "Community 89"
Cohesion: 0.16
Nodes (12): build_client_key_exchange(), build_packet_payload(), derive_marconi_key(), thekogans Marconi wire format implementation. Implements the binary protocol…, Encode Session::Header. session_id: 16 bytes (GUID) sequence: ui64 BE (8 bytes)…, Decode Session::Header. Returns (session_id, sequence)., Build SerializableHeader + payload for embedding in a Marconi frame., Build a ClientKeyExchangePacket payload. This is the packet data (after… (+4 more)

### Community 90 - "Community 90"
Cohesion: 0.25
Nodes (10): frame_header_decode(), generate_key_id(), marconi_decrypt(), marconi_encrypt(), Decode a FrameHeader from data. Returns (key_id, ciphertext_length)., Encrypt a payload into a complete Marconi frame. Returns the full wire bytes:…, Decrypt a complete Marconi frame. Args: data: raw bytes starting with…, Generate a random 32-byte key identifier (Serializable ID). (+2 more)

### Community 91 - "Community 91"
Cohesion: 0.22
Nodes (13): hex_dump(), parse_udp_beacon(), Attempt to parse a UDP discovery beacon. Beacons may be: 1. thekogans encrypted…, listen_udp(), main(), probe_tcp(), Read machine-id from /etc/machine-id, truncated to 16 chars., Send a JuhRadialMX discovery beacon to the Mac. (+5 more)

### Community 92 - "Community 92"
Cohesion: 0.25
Nodes (4): FlowRequestHandler, BaseHTTPRequestHandler, HTTP request handler for Flow server, _sanitize_log()

### Community 93 - "Community 93"
Cohesion: 0.15
Nodes (13): Reposition overlay after XWayland syncs cursor position on COSMIC., get_cursor_position_xwayland(), get_cursor_position_xwayland_synced(), _init_xlib(), Initialize Xlib bindings (cached)., Raw XQueryPointer call (assumes _init_xlib() was called)., Return current X display size for screen 0., Get cursor position via XWayland using Xlib XQueryPointer. Works on any Wayland… (+5 more)

### Community 94 - "Community 94"
Cohesion: 0.16
Nodes (6): Open dialog to add per-application profile, AddApplicationDialog, Get list of running applications using D-Bus and process detection, Real application icon: desktop entry -> icon theme -> generic., Dialog for adding a per-application profile, Add the application profile

### Community 95 - "Community 95"
Cohesion: 0.21
Nodes (7): KWinScriptError, KWinScriptRunOutcome, Display, Formatter, From, Option, Result

### Community 96 - "Community 96"
Cohesion: 0.24
Nodes (10): ButtonAction, ButtonsConfig, default_back_action(), default_forward_action(), default_gesture_action(), default_horizontal_scroll_action(), default_middle_action(), default_shift_wheel_action() (+2 more)

### Community 97 - "Community 97"
Cohesion: 0.18
Nodes (7): EffectiveGlassmorphism, HighContrastSettings, Default, Self, test_get_high_contrast_settings(), test_high_contrast_glassmorphism(), test_high_contrast_settings_defaults()

### Community 98 - "Community 98"
Cohesion: 0.21
Nodes (9): frame_header_encode(), plaintext_header_decode(), plaintext_header_encode(), Encode a FrameHeader (36 bytes). key_id: 32 bytes ciphertext_length: ui32 BE, Encode PlaintextHeader (2 bytes)., Decode PlaintextHeader. Returns (random_length, flags)., Tests for thekogans Marconi wire format implementation., TestFrameHeader (+1 more)

### Community 99 - "Community 99"
Cohesion: 0.27
Nodes (8): ConnectionHint, DeviceDescriptor, lookup(), lookup_from_uevent(), product_id_from_uevent(), Option, test_known_pid_lookup(), test_unknown_pid_falls_back()

### Community 100 - "Community 100"
Cohesion: 0.23
Nodes (4): DPIVisualSlider, Switch to spin button for manual DPI entry., Live update slider as user changes spin value., Visual DPI slider with value display

### Community 101 - "Community 101"
Cohesion: 0.23
Nodes (3): Map automatic thresholds 1..49 back to Easy/Hard percent., Update controls from the initial device read without firing setters., Use persisted SmartShift state when the daemon is unavailable.

### Community 102 - "Community 102"
Cohesion: 0.18
Nodes (5): _GlowView, _Helper, Flow Edge Indicator - transparent overlay showing cursor handoff zone. A…, NSObject, NSView

### Community 104 - "Community 104"
Cohesion: 0.29
Nodes (3): LogiAgent, Communicate with Logi Options+ agent via its Unix socket IPC. Uses the agent's…, Switch MX Master 4 Easy-Switch to given channel (1-based). Sends the HID++…

### Community 105 - "Community 105"
Cohesion: 0.40
Nodes (3): Any, Test status publication through the production heartbeat path., TestJuhFlowBridgeStatusPublication

### Community 106 - "Community 106"
Cohesion: 0.40
Nodes (6): long_report_with_0x41_index_is_not_a_connection_notification(), receiver_link_down_does_not_request_refresh(), receiver_link_up_requests_divert_refresh(), refresh_triggers_are_debounced(), test_handler(), wireless_status_broadcast_requests_divert_refresh()

### Community 107 - "Community 107"
Cohesion: 0.27
Nodes (9): find_monitor_at(), Return the monitor rect containing (x, y), else None., _kscreen_doc(), KDE Wayland second-monitor drift regression (KWin-logical vs Qt space). Real…, test_find_monitor_at_boundaries(), test_main_monitor_identity(), test_parse_kscreen_json_scale_and_rotation(), test_second_monitor_center_no_clamp() (+1 more)

### Community 108 - "Community 108"
Cohesion: 0.20
Nodes (10): detect_logitech_mouse(), _detect_non_logitech_mouse(), _get_daemon_proxy(), get_device_name(), get_device_name_from_daemon(), Detect connected Logitech mouse name, Get detected device name (cached), Get a D-Bus proxy to the daemon. Returns None on failure. (+2 more)

### Community 109 - "Community 109"
Cohesion: 0.22
Nodes (5): _action_summary(), Create a single action row for the timeline., Human-readable one-line summary of an action., Replace delay label with a SpinButton for inline editing., _Point

### Community 110 - "Community 110"
Cohesion: 0.22
Nodes (4): Enter pressed - apply and switch back to label., Focus lost - apply and switch back to label., Apply spin button value and switch back to label display., Apply spin value and switch back to label display.

### Community 111 - "Community 111"
Cohesion: 0.24
Nodes (4): Handle wheel mode change from segmented control., Map Easy 1% -> Hard 100% to automatic thresholds 1..49. Threshold 0 selects…, Apply SmartShift via the simplified D-Bus API., Invalidate pending initial D-Bus reads after a local edit.

### Community 112 - "Community 112"
Cohesion: 0.44
Nodes (5): D, Result, Self, Ok, S

### Community 113 - "Community 113"
Cohesion: 0.22
Nodes (4): default_thumbwheel_speed(), ThumbwheelConfig, ThumbwheelMode, ThumbwheelOutput

### Community 114 - "Community 114"
Cohesion: 0.25
Nodes (3): DiscoveryListener, Listen for JuhRadial MX Linux peers on LAN via UDP beacons., linux_direction: which edge Linux is on (left/right/top/bottom). mac_channel:…

### Community 115 - "Community 115"
Cohesion: 0.29
Nodes (3): EdgeDetector, Detect when mouse cursor hits screen edges on macOS. Uses Quartz CGEvent tap…, Poll mouse position to detect edge hits.

### Community 116 - "Community 116"
Cohesion: 0.25
Nodes (4): JuhFlowMenubar, main(), macOS menubar app for JuhFlow., timer

### Community 117 - "Community 117"
Cohesion: 0.29
Nodes (3): LinuxBridgeClient, Encrypted TCP client connecting to JuhRadial MX on Linux., Encrypt and send a message to Linux.

### Community 118 - "Community 118"
Cohesion: 0.43
Nodes (7): connect(), find_socket(), query(), Probe Logi Options+ agent for sensitivity and scroll settings., read_frame(), recv_json(), send_json()

### Community 119 - "Community 119"
Cohesion: 0.39
Nodes (5): Encode a thekogans SerializableHeader. Format: SizeT(strlen) + type_string +…, Decode a SerializableHeader from data. Returns (type_name, version,…, serialize_header_decode(), serialize_header_encode(), TestSerializableHeader

### Community 120 - "Community 120"
Cohesion: 0.29
Nodes (8): _get_assets_dir(), load_ai_icons(), load_os_icons(), Get the assets directory, searching dev and installed paths., Pre-render SVG to QPixmap at fixed size (avoids huge buffer allocations)., Load SVG icons for AI submenu items (pre-rendered to QPixmap)., Load SVG icons for OS Easy-Switch submenu items (pre-rendered to QPixmap)., _svg_to_pixmap()

### Community 121 - "Community 121"
Cohesion: 0.25
Nodes (4): main(), Clean up all resources on application exit, GTK4/Adwaita Application, SettingsApp

### Community 122 - "Community 122"
Cohesion: 0.46
Nodes (7): daemon_name_owned(), daemon_unit_managed(), main(), resolve_daemon(), resolve_overlay(), resolve_project_root(), juhradial-mx.sh script

### Community 123 - "Community 123"
Cohesion: 0.39
Nodes (7): _load_method(), FunctionDef, Regression tests for SmartShift sensitivity and mode readback., _scroll_page_method(), test_device_readback_uses_dbus_mode_contract_and_preserves_sensitivity(), test_easy_to_hard_maps_to_automatic_thresholds_in_order(), test_every_automatic_threshold_round_trips_exactly()

### Community 124 - "Community 124"
Cohesion: 0.29
Nodes (4): ConnectionType, Display, Formatter, Result

### Community 125 - "Community 125"
Cohesion: 0.29
Nodes (3): Set up drag-and-drop for reordering., Visual feedback when drag starts., Handle drop - reorder actions.

### Community 126 - "Community 126"
Cohesion: 0.29
Nodes (3): 3-mode segmented control: Ratchet / SmartShift / Free-spin. Matches the Logi…, Set active mode without triggering callback., WheelModeSelector

### Community 127 - "Community 127"
Cohesion: 0.33
Nodes (5): ciphertext_header_decode(), ciphertext_header_encode(), Encode a CiphertextHeader (8 bytes, big-endian)., Decode a CiphertextHeader. Returns (iv_len, ct_len, mac_len)., TestCiphertextHeader

### Community 128 - "Community 128"
Cohesion: 0.33
Nodes (6): _binding_chip_label(), _binding_full_label(), _mouse_button_name(), Compact uppercase binding label for the list chip, e.g. 'MOUSE · BACK'., Readable binding label for the stats readout., Short human name for a GDK mouse button number.

### Community 130 - "Community 130"
Cohesion: 0.70
Nodes (4): Criterion, benchmark_action_execution(), benchmark_event_processing(), benchmark_profile_lookup()

### Community 132 - "Community 132"
Cohesion: 0.40
Nodes (4): Result, verify_feature_safety(), test_verify_feature_safety_blocklisted(), test_verify_feature_safety_onboard_profiles()

### Community 133 - "Community 133"
Cohesion: 0.40
Nodes (3): Box, Create the '+' button between rows for inserting actions., Insert a default delay action at the given index.

### Community 134 - "Community 134"
Cohesion: 0.60
Nodes (4): fetch_star_dates(), main(), Render the repository star-history chart to assets/github/star-history.svg.…, render()

### Community 138 - "Community 138"
Cohesion: 0.67
Nodes (3): Regression contracts for user-visible startup latency., _splash_min_display_ms(), test_splash_does_not_mask_a_ready_application_for_two_seconds()

## Knowledge Gaps
- **13 isolated node(s):** `MessageType`, `juhradial-settings.sh script`, `sync-to-install.sh script`, `update-translations.sh script`, `test_launcher.sh script` (+8 more)
  These have ≤1 connection - possible missing edges or undocumented components. (Counts symbols only; 1226 node(s) total have ≤1 connection when file, concept and rationale nodes are included.)
- **15 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `_Error` connect `Community 4` to `Community 64`, `Community 2`, `Community 67`, `Community 3`, `Community 35`, `Community 6`, `Community 8`, `Community 10`, `Community 45`, `Community 82`, `Community 53`, `Community 23`, `Community 95`?**
  _High betweenness centrality (0.489) - this node is a cross-community bridge._
- **Are the 4 inferred relationships involving `MacrosPage` (e.g. with `SettingsWindow` and `MacroEditorDialog`) actually correct?**
  _`MacrosPage` has 4 INFERRED edges - model-reasoned connections that need verification._
- **What connects `MessageType`, `juhradial-settings.sh script`, `sync-to-install.sh script` to the rest of the system?**
  _13 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `Community 0` be split into smaller, more focused modules?**
  _Cohesion score 0.0531883632089333 - nodes in this community are weakly interconnected._
- **Should `Community 1` be split into smaller, more focused modules?**
  _Cohesion score 0.04683544303797468 - nodes in this community are weakly interconnected._
- **Should `Community 2` be split into smaller, more focused modules?**
  _Cohesion score 0.06519114688128773 - nodes in this community are weakly interconnected._
- **Should `Community 3` be split into smaller, more focused modules?**
  _Cohesion score 0.08484848484848485 - nodes in this community are weakly interconnected._