-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- Hold the configuration
local config = {}

-- auto reload
config.automatically_reload_config = true

-- update
config.check_for_updates = true
config.check_for_updates_interval_seconds = 86400

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

-- tab
config.window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
  font = wezterm.font { family = 'Cica', weight = 'Bold' },

  -- The size of the font in the tab bar.
  -- Default to 10.0 on Windows but 12.0 on other systems
  font_size = 15.0,

  -- The overall background color of the tab bar when
  -- the window is focused
  active_titlebar_bg = '#333333',

  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = '#333333',
}

config.colors = {
  tab_bar = {
    -- The color of the inactive tab bar edge/divider
    inactive_tab_edge = '#575757',
  },
}

-- window
config.color_scheme = 'nord'
config.window_background_opacity = 0.8

return config