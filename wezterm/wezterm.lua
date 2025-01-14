local wezterm = require("wezterm")
local config = wezterm.config_builder()

local is_windows <const> = wezterm.target_triple:find("windows") ~= nil
local git = os.getenv("GIT")

config.color_scheme = "s3r0 modified (terminal.sexy)"
config.font = wezterm.font("Iosevka Slab", { weight = "Regular", stretch = "Normal", style = "Normal" })
config.font_size = 16
config.window_background_opacity = 1

if is_windows then
	config.default_prog = { git .. "/bin/bash" }
end

if not is_windows then
	config.enable_wayland = false
end

return config
