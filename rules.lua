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
			
			-----------------------------------------------------
			-----------------------------------------------------
			--
			-- General
			--
			-----------------------------------------------------
			-----------------------------------------------------

			-- VLC
		{ rule = { class = "Vlc" },
		  properties = { tag = tags[1][9] } },

		{ rule = { class = "pinentry" },
		  properties = { floating = true } },

			-- GIMP
		{ rule = { class = "gimp" },
		  properties = { floating = true } },

			---- Google chrome
			 --{ rule = { class = "chrome" },
				 --properties = { tag = tags[1][1] } },

			-----------------------------------------------------
			-----------------------------------------------------
			--
			-- Games
			--
			-----------------------------------------------------
			-----------------------------------------------------

			-- Battle for wesnoth
			{rule = {class = "wesnoth" },
				properties = { tag = tags[1][7] } },

			-- Steam
			{rule = {class = "steam" },
				properties = { tag = tags[1][7] } },
			{rule = {class = "steamwebhelper" },
				properties = { tag = tags[1][7] } },
			
			-- dota2
			{rule = {class = "dota" },
				properties = { tag = tags[1][7] } },
	}
-- }}}
