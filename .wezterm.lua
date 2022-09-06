local wezterm = require 'wezterm'
return {
  ----------------- input
  use_ime = true,
  ime_preedit_rendering = 'System',
  ----------------- fonts
  font = wezterm.font_with_fallback {
    'Cica',
    'JetBrains Mono',
  },
  font_size = 18.0,
  line_height = 1.1,
  adjust_window_size_when_changing_font_size = false,
  ----------------- window
  color_scheme = "nord",
}