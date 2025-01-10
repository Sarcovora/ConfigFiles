local wezterm = require("wezterm")

return {
	font = wezterm.font("GeistMono Nerd Font Mono"),
	font_size = 16.0,

	max_fps = 120,

	-- color_scheme = "catppuccin-mocha",
	color_scheme = "Rosé Pine (Gogh)",

	hide_tab_bar_if_only_one_tab = true,

	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},

	-- background = {
	-- 	{
	-- 		source = {
	-- 			-- File = "/Users/" .. os.getenv("USER") .. "/.config/wezterm/dark-desert.jpg",
	-- 			Color = "#1E1E2E",
	-- 		},
	-- 		width = "100%",
	-- 		height = "100%",
	-- 		opacity = 1,
	-- 		-- hsb = {
	-- 		-- 	hue = 1.0,
	-- 		-- 	saturation = 1.02,
	-- 		-- 	brightness = 0.25,
	-- 		-- },
	-- 		-- attachment = { Parallax = 0.3 },
	-- 		-- width = "100%",
	-- 		-- height = "100%",
	-- 	},
	-- 	{
	-- 		source = {
	-- 			Color = "#b541cc",
	-- 		},
	-- 		width = "100%",
	-- 		height = "100%",
	-- 		opacity = 0.2,
	-- 	},
	-- },

	-- window_background_opacity = 0.85,
	-- window_background_opacity = 0.80,
	window_background_opacity = 0.95,
	-- window_background_opacity = 1,
	macos_window_background_blur = 40,

	window_decorations = "RESIZE",

	initial_rows = 40,
	initial_cols = 130,

	-- Disable ligatures
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },

	keys = {
		{ key = "t", mods = "CTRL", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
		{ key = "w", mods = "CTRL", action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
		-- { key = "c", mods = "CTRL", action = wezterm.action({ CopyTo = "Clipboard" }) },
		-- { key = "v", mods = "CTRL", action = wezterm.action({ PasteFrom = "Clipboard" }) },
	},
}
