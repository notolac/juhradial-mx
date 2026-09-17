-- Unofficial JuhRadial MX fork overlay (Omarchy / Hyprland 0.56+)
-- Source: packaging/omarchy/juhradial-hyprland.lua
-- Paste or: dofile(os.getenv("HOME") .. "/.config/hypr/juhradial-hyprland.lua")
-- at the end of ~/.config/hypr/hyprland.lua (user override zone).
-- Never use windowrulev2. Never edit /usr/share/omarchy/.
-- Overlay window title stays "JuhRadial MX" (Hyprland matches it).

o.window({ title = "^JuhRadial MX$" }, {
  tag = "-default-opacity",
  float = true,
  pin = true,
  no_blur = true,
  no_shadow = true,
  border_size = 0,
  no_anim = true,
  opacity = "1 1",
})
