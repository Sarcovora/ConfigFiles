local wezterm = require("wezterm")

return {
	font = wezterm.font("GeistMono Nerd Font Mono"),
	font_size = 16.0,

	color_scheme = "catppuccin-mocha",

	hide_tab_bar_if_only_one_tab = true,

	window_padding = {
		left = 10,
		right = 10,
		top = 5,
		bottom = 5,
	},

	window_background_opacity = 0.80,
	macos_window_background_blur = 70,

	window_decorations = "RESIZE",

	initial_rows = 30,
	initial_cols = 100,

	-- Disable ligatures
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },

	keys = {
		{ key = "t", mods = "CTRL", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
		{ key = "w", mods = "CTRL", action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
		{ key = "c", mods = "CTRL", action = wezterm.action({ CopyTo = "Clipboard" }) },
		{ key = "v", mods = "CTRL", action = wezterm.action({ PasteFrom = "Clipboard" }) },
	},
}
