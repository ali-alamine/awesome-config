	local wibox = require("wibox")
-- Create the separator widget
--separator_widget= wibox.widget.imagebox()
--separator_widget:set_image(awful.util.getdir("config") .. "/vertical_separator.png")
separator_widget = wibox.widget.textbox()
separator_widget:set_text("  |  ")
