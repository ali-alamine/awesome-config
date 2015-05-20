local blingbling = require("blingbling")
local wibox = require("wibox")

local volume=blingbling.volume.new()
volume:set_height(18)
volume:set_width(30)
volume:set_graph_color("#449911")
--bind the volume widget on the master channel
volume:update_master()
volume:set_master_control()
volume:set_bar(true)

local volume_label = wibox.widget.textbox()
volume_label:set_text("Vol:")

volume_widget = wibox.layout.fixed.horizontal()
volume_widget:add(volume_label)
volume_widget:add(volume)
