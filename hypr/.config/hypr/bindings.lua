-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- Application bindings

-- Unbind the defaults we're overriding
hl.unbind("SUPER +  ALT + RETURN")
hl.unbind("SUPER + RETURN")
hl.unbind("SUPER +  SHIFT + RETURN")
hl.unbind("SUPER + SHIFT + F")
hl.unbind("SUPER + ALT SHIFT + F")
hl.unbind("SUPER + SHIFT + B")
hl.unbind("SUPER + SHIFT ALT + B")
hl.unbind("SUPER + SHIFT + N")
hl.unbind("SUPER + SHIFT + T")
hl.unbind("SUPER + SHIFT + M")
hl.unbind("SUPER + SHIFT + D")
hl.unbind("SUPER + SHIFT + G")
hl.unbind("SUPER + SHIFT + O")
hl.unbind("SUPER + SHIFT + L")
hl.unbind("SUPER + SHIFT + E")
hl.unbind("SUPER + SHIFT + A")
hl.unbind("SUPER + SHIFT ALT + A")
hl.unbind("SUPER + SHIFT + Y")
hl.unbind("SUPER + SHIFT + X")
hl.unbind("SUPER + SHIFT + R")
hl.unbind("SUPER + SHIFT + ALT + I")

-- Your bindings
o.bind("SUPER +  ALT + RETURN", "Tmux", 'uwsm-app -- xdg-terminal-exec --dir="$(omarchy-cmd-terminal-cwd)" tmux new')
o.bind("SUPER + RETURN", "Terminal", 'uwsm-app -- xdg-terminal-exec --dir="$(omarchy-cmd-terminal-cwd)"')
o.bind("SUPER +  SHIFT + F", "File manager", "uwsm-app -- nautilus --new-window")
o.bind("SUPER +  ALT +  SHIFT + F", "File manager (cwd)", 'uwsm-app -- nautilus --new-window "$(omarchy-cmd-terminal-cwd)"')
o.bind("SUPER +  SHIFT + B", "Browser", "omarchy-launch-browser")
o.bind("SUPER +  SHIFT +  ALT + B", "Browser (private)", "omarchy-launch-browser --private")
o.bind("SUPER +  SHIFT + N", "Editor", "omarchy-launch-editor")
o.bind("SUPER +  SHIFT + T", "Activity", "omarchy-launch-tui btop")
o.bind("SUPER +  SHIFT + M", "Music", 'omarchy-launch-webapp "https://music.youtube.com"')
o.bind("SUPER +  SHIFT + D", "Docker", "omarchy-launch-tui lazydocker")
o.bind("SUPER +  SHIFT + G", "Telegram", 'omarchy-launch-or-focus Telegram "uwsm-app -- Telegram"')
o.bind("SUPER +  SHIFT + O", "Obsidian", 'omarchy-launch-or-focus "^obsidian$" "uwsm-app -- obsidian"')
o.bind("SUPER +  SHIFT + L", "Filezilla", "uwsm-app -- filezilla")
o.bind("SUPER +  SHIFT + E", "Email", "uwsm-app -- thunderbird")
o.bind("SUPER +  SHIFT + A", "ChatGPT", 'omarchy-launch-webapp "https://chatgpt.com"')
o.bind("SUPER +  SHIFT +  ALT + A", "Grok", 'omarchy-launch-webapp "https://grok.com"')
o.bind("SUPER +  SHIFT + Y", "YouTube", 'omarchy-launch-webapp "https://youtube.com/"')
o.bind("SUPER +  SHIFT + X", "X", 'omarchy-launch-webapp "https://x.com/"')
o.bind("SUPER +  SHIFT + R", "Reddit", 'omarchy-launch-webapp "https://reddit.com"')
o.bind("SUPER +  SHIFT + ALT + I", "WhatsApp", 'omarchy-launch-or-focus-webapp WhatsApp "https://web.whatsapp.com/"')
