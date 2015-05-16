local awful = require("awful")
local vicious = require("vicious")
local naughty = require("naughty")

-- Create the battery widget
mybatterywidget = awful.widget.progressbar()
mybatterywidget:set_width(8)
mybatterywidget:set_height(10)
mybatterywidget:set_vertical(true)
mybatterywidget:set_background_color('000000')
mybatterywidget:set_color('FFFFFF')
mybatterywidget:set_value(0)
vicious.register( mybatterywidget, vicious.widgets.bat,
	function(widget, args)
		if args[1] == '−' then
			-- Battery is discharging
			widget:set_color("DB0000")
		elseif args[1] == '+' then
			-- Battery is charging
			widget:set_color("00AB1F")
		else
			-- None of the above
			widget:set_color("0000FF")
		end
		if args[1] == '−' and args[2] < 10 then
			naughty.notify({ preset = naughty.config.presets.notice,
					 title = "Battery Level is Low",
					 text = args[2],
					 timeout = 0.997})
		end
		--naughty.notify({ preset = naughty.config.presets.notice,
				 --title = "Battery",
				 --text = args[1] })
		return args[2]
	end, 1, "BAT1")
