local wezterm = require("wezterm")
local config = wezterm.config_builder()

local is_windows <const> = wezterm.target_triple:find("windows") ~= nil
local git = os.getenv("GIT")

config.color_scheme = "Kanagawa (Gogh)"
config.font_size = 16
config.window_background_opacity = 0.95

if is_windows then
	config.default_prog = { git .. "/bin/bash" }
end
return config
