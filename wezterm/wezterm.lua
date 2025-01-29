local wezterm = require("wezterm")
local config = wezterm.config_builder()

local is_windows <const> = wezterm.target_triple:find("windows") ~= nil
local git = os.getenv("GIT")

-- kanagawa dragon colorscheme
config.force_reverse_video_cursor = true
config.colors = {
	foreground = "#c5c9c5",
	background = "#181616",

	cursor_bg = "#C8C093",
	cursor_fg = "#C8C093",
	cursor_border = "#C8C093",

	selection_fg = "#C8C093",
	selection_bg = "#2D4F67",

	scrollbar_thumb = "#16161D",
	split = "#16161D",

	ansi = {
		"#0D0C0C",
		"#C4746E",
		"#8A9A7B",
		"#C4B28A",
		"#8BA4B0",
		"#A292A3",
		"#8EA4A2",
		"#C8C093",
	},
	brights = {
		"#A6A69C",
		"#E46876",
		"#87A987",
		"#E6C384",
		"#7FB4CA",
		"#938AA9",
		"#7AA89F",
		"#C5C9C5",
	},
}

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
