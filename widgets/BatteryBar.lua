local awful = require("awful")

-- Create the battery widget
mybatterywidget = awful.widget.progressbar()
mybatterywidget:set_width(8)
mybatterywidget:set_height(10)
mybatterywidget:set_vertical(true)
mybatterywidget:set_background_color('#000000')
mybatterywidget:set_color('FFFFFF')
mybatterywidget:set_value(0)
local bw_timer = timer({ timeout = 1 })
bw_timer:connect_signal("timeout", function()
	local fd = io.popen(
			   "upower -d "
			.. "| awk '$1=/percentage/{print $2;exit;}' "
			.. "| sed -e 's/^\\([[:digit:]]*\\)\\(%\\)$/\\1/g'")
	local str = fd:read("*l")
	io.close(fd)
	fd = io.popen("upower -d | awk '/state/{print $2;exit}'")
	local state = fd:read("*l")
	io.close(fd)
	if not time then
		textToShow = ''
	else
		textToShow = " remaining:" .. time .. "h"
	end
	mybatterywidget:set_value(tonumber(str) / 100)
	if state == "charging" then
		mybatterywidget:set_color('#00AB1F')
	else
		mybatterywidget:set_color('#DB0000')
	end
end)
bw_timer:start()
