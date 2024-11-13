-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- Hold the configuration
local config = {}

config.scrollback_lines = 9999999
config.hyperlink_rules = wezterm.default_hyperlink_rules()

-- input
config.use_ime = true
config.ime_preedit_rendering = 'System'

-- fonts
config.font = wezterm.font_with_fallback {
  'Cica',
  'JetBrains Mono',
}
config.font_size = 18.0
config.line_height = 1.1
config.adjust_window_size_when_changing_font_size = false
config.enable_scroll_bar = true

-- window
config.color_scheme = 'nord'
config.window_background_opacity = 0.8

return config