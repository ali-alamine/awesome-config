local awful = require("awful")
local vicious = require("vicious")
local wibox = require("wibox")
-- Create the memory widgets for the bottom wibox
vicious.cache(vicious.widgets.mem)

local memory_label = wibox.widget.textbox()
memory_label:set_text("Memory:")

local swap_label = wibox.widget.textbox()
swap_label:set_text(" Swap:")

local memory_progressbar = awful.widget.progressbar()
memory_progressbar:set_width(100)
memory_progressbar:set_height(2)
memory_progressbar:set_vertical(false)
memory_progressbar:set_background_color('#000000')
memory_progressbar:set_color('FFFFFF')
memory_progressbar:set_value(0)
vicious.register(memory_progressbar, vicious.widgets.mem, "$1", 5)

local swap_progressbar = awful.widget.progressbar()
swap_progressbar:set_width(100)
swap_progressbar:set_height(2)
swap_progressbar:set_vertical(false)
swap_progressbar:set_background_color('#000000')
swap_progressbar:set_color('FFFFFF')
swap_progressbar:set_value(0)
vicious.register(swap_progressbar, vicious.widgets.mem, "$5")

local memory_margin_progressbar = wibox.layout.margin(memory_progressbar,0,0,5,5)
local swap_margin_progressbar = wibox.layout.margin(swap_progressbar,0,0,5,5)

memory_widget = wibox.layout.fixed.horizontal()
memory_widget:add(memory_label)
memory_widget:add(memory_margin_progressbar)
memory_widget:add(swap_label)
memory_widget:add(swap_margin_progressbar)
