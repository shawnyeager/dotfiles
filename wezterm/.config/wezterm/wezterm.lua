local wezterm = require("wezterm")

-- Define a function to split intelligently
function intelligent_split_pane(window, pane)
	local dims = pane:get_dimensions()

	-- If the pane is wider than it is tall, split vertically
	if dims.pixel_width > dims.pixel_height then
		window:perform_action(wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }), pane)
	else
		-- Otherwise, split horizontally
		window:perform_action(wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }), pane)
	end
end

return {
	-- Hides window decorations
	window_decorations = "NONE",

	-- Hide the tab bar if there's only one tab
	hide_tab_bar_if_only_one_tab = true,

	-- Apply the Catppuccin Mocha theme
	color_scheme = "Catppuccin Mocha",

	-- Set opacity to 98%
	window_background_opacity = 0.98,

	-- Set window padding
	window_padding = {
		left = 30,
		right = 30,
		top = 30,
		bottom = 30,
	},

	-- Optional: Font and size configuration (adjust to your preferences)
	font = wezterm.font("CaskaydiaCove Nerd Font Mono"), -- Or any other preferred font
	font_size = 12.0,

	-- Key bindings to mimic Zellij behavior
	keys = {
		-- Create a new tab (window) with Ctrl + t
		{ key = "t", mods = "CTRL", action = wezterm.action.SpawnTab("CurrentPaneDomain") },

		-- Intelligent pane splitting with Ctrl + p
		{
			key = "p",
			mods = "CTRL",
			action = wezterm.action_callback(function(window, pane)
				intelligent_split_pane(window, pane)
			end),
		},

		-- Open the command bar with Ctrl + Shift + p
		{ key = "p", mods = "CTRL|SHIFT", action = wezterm.action.ActivateCommandPalette },

		-- Navigate between panes (Alt + Arrow keys)
		{ key = "LeftArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
		{ key = "RightArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },
		{ key = "UpArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Up") },
		{ key = "DownArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Down") },

		-- Navigate between tabs (windows) (Alt + n for next, Alt + p for previous)
		{ key = "n", mods = "ALT", action = wezterm.action.ActivateTabRelative(1) },
		{ key = "p", mods = "ALT", action = wezterm.action.ActivateTabRelative(-1) },
	},
}
