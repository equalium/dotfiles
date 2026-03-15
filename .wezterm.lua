local wezterm = require 'wezterm'
local config = {}

config.default_prog = { "wsl.exe", "--distribution", "Ubuntu" }

config.font = wezterm.font("JetBrains Mono")
config.font_size = 12

config.color_scheme = "Catppuccin Mocha"

config.window_background_opacity = 0.95

config.hide_tab_bar_if_only_one_tab = true

config.enable_wayland = false
config.use_dead_keys = false

config.keys = {
  -- split horizontal
  {
    key = "h",
    mods = "CTRL|SHIFT|ALT",
    action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" },
  },

  -- split vertical
  {
    key = "v",
    mods = "CTRL|SHIFT|ALT",
    action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" },
  },
}

config.keys = {
  {key="c", mods="CTRL|SHIFT", action=wezterm.action.CopyTo("Clipboard")},
  {key="v", mods="CTRL|SHIFT", action=wezterm.action.PasteFrom("Clipboard")},
}

return config