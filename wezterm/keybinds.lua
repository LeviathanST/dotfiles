local wezterm = require("wezterm")

local keymap = {
	{ key = "l", mods = "CTRL|SHIFT", action = wezterm.action({ MoveTabRelative = 1 }) },
	{ key = "h", mods = "CTRL|SHIFT", action = wezterm.action({ MoveTabRelative = -1 }) },
	{
		key = "w",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentTab({ confirm = false }),
	},
}

return keymap
