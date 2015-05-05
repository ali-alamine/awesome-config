-- Standard awesome library
	local gears = require("gears")
	local awful = require("awful")
	awful.rules = require("awful.rules")
	require("awful.autofocus")

-- launch the Cairo Composite Manager
	--awful.util.spawn_with_shell("cairo-compmgr &")

-- Theme handling library
	local beautiful = require("beautiful")

-- Import external files
	local status_bar_separator = require("widgets/WidgetSeparator")
	local battery_bar_widget = require("widgets/BatteryBar")

-- Fix the mute in my laptop with alsamixer
	require("fixes/FixMute")

-- Import the library responsible of error handling errors
	require("errors")

-- Themes define colours, icons, font and wallpapers.
	beautiful.init("/usr/share/awesome/themes/zenburn/theme.lua")
	-- Wallpaper
		if beautiful.wallpaper then
				for s = 1, screen.count() do
					gears.wallpaper.maximized(beautiful.wallpaper, s, true)
				end
		end
	-- Get the wallpapers
	require("backgroundImages")

-- Import variables
	require("variables")

-- Get the tags
	require("tags")

-- Get the menu bar
	require("menu")

-- Get the wiboxes (status bars)
	require("wiboxes")

-- {{{ Mouse bindings
	root.buttons(awful.util.table.join(
	    awful.button({ }, 3, function () mymainmenu:toggle() end),
	    awful.button({ }, 4, awful.tag.viewnext),
	    awful.button({ }, 5, awful.tag.viewprev)
	))
-- }}}

-- Get the key bindings
	require("keyBindings")

-- Get the applications rules
	require("rules")

-- Process the signals for creating a new client (window)
	require("signals")

-- Applications startup
	require("ApplicationStartup")
