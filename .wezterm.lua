local wezterm = require 'wezterm'
return {
  ----------------- input
  use_ime = true,
  ime_preedit_rendering = 'System',
  ----------------- fonts
  font = wezterm.font('JetBrains Mono', { weight = 'Bold' }),
  font_size = 14.0,
  line_height = 1.1,
  ----------------- window
  color_scheme = "nord",
}