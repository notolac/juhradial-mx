# Omarchy 4 / Hyprland 0.56

Snippet versionado para el overlay de este **fork no oficial** de JuhRadial MX.

Omarchy 4 carga Hyprland en **Lua** (`~/.config/hypr/hyprland.lua`). No hay `hyprland.conf` activo. En Hyprland 0.56 `windowrulev2` no vale.

## Aplicar (cuando el usuario pida instalar)

1. Copia `juhradial-hyprland.lua` a `~/.config/hypr/` (el instalador puede hacerlo).
2. Añade **al final** de `~/.config/hypr/hyprland.lua` (zona de overrides):

```lua
dofile(os.getenv("HOME") .. "/.config/hypr/juhradial-hyprland.lua")
```

O pega el contenido del snippet en ese mismo sitio.

3. Valida:

```bash
hyprctl reload
hyprctl configerrors
```

No edites `/usr/share/omarchy/`. El título de ventana del overlay sigue siendo `JuhRadial MX`.
