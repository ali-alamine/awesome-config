local awful = require("awful")
local beautiful = require("beautiful")

-- {{{ Rules
	-- Rules to apply to new clients (through the "manage" signal).
	awful.rules.rules = {
	    -- All clients will match this rule.
	    { rule = { },
	      properties = { border_width = beautiful.border_width,
			     border_color = beautiful.border_normal,
			     focus = awful.client.focus.filter,
			     raise = true,
			     keys = clientkeys,
			     buttons = clientbuttons } },
	    { rule = { class = "Vlc" },
	      properties = { floating = true, tag = tags[1][9] } },
	    { rule = { class = "pinentry" },
	      properties = { floating = true } },
	    { rule = { class = "gimp" },
	      properties = { floating = true } },
			 --Set Chrome to always map on tags number 1 of screen 1.
			 { rule = { class = "chrome" },
				 properties = { tag = tags[1][1] } },
			{rule = {class = "wesnoth" },
				properties = { tag = tags[1][7] } },
			{rule = {class = "steam" },
				properties = { tag = tags[1][7] } },
			{rule = {class = "dota" },
				properties = { tag = tags[1][7] } },
	}
-- }}}
