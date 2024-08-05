local wezterm = require("wezterm")

return {
	color_scheme = 'zenburn (terminal.sexy)',
	-- color_scheme = "terminal.sexy",
	enable_tab_bar = false,
	line_height = 1.2,
	cell_width = 0.90,
	font_size = 16.00,
	font = wezterm.font("MartianMono Nerd Font", { weight = "Regular" }),
	-- font = wezterm.font("SpaceMono Nerd Font", { weight = "Medium" }),
	-- font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular" }),
	-- font = wezterm.font("VictorMono Nerd Font Mono", { weight = "Bold", italic = false }),
	-- font = wezterm.font("Iosevka Nerd Font", { weight = "Regular" }),
	-- font = wezterm.font("ZedMono Nerd Font Mono", { weight = "Medium" }),
	-- font = wezterm.font("CaskaydiaCove Nerd Font", { weight = "Medium" }),
	-- font = wezterm.font("BlexMono Nerd Font", { weight = "Medium" }),
	-- font = wezterm.font("IMWritingMono Nerd Font Mono", { weight = "DemiBold", italic = false }),
	window_padding = {
		left = '1cell',
		right = '1cell',
		top = '0.5cell',
		bottom = 0,
	},
	window_decorations = "RESIZE",
	keys = {
		{
			key = "f",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
	},
	mouse_bindings = {
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},
}
