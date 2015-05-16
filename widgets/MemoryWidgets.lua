local vicious = require("vicious")
local wibox = require("wibox")
local blingbling = require("blingbling")
-- Create the memory widgets for the bottom wibox
vicious.cache(vicious.widgets.mem)

local memory_label = wibox.widget.textbox()
memory_label:set_text("Memory:")

local swap_label = wibox.widget.textbox()
swap_label:set_text(" Swap:")

local memory_progressbar=blingbling.progress_graph.new() 
memory_progressbar:set_height(18)
memory_progressbar:set_width(80)
memory_progressbar:set_v_margin(2)
memory_progressbar:set_show_text(true)
memory_progressbar:set_horizontal(true)
vicious.register(memory_progressbar, vicious.widgets.mem, "$1", 5)

local swap_progressbar=blingbling.progress_graph.new() 
swap_progressbar:set_height(18)
swap_progressbar:set_width(80)
swap_progressbar:set_v_margin(2)
swap_progressbar:set_show_text(true)
swap_progressbar:set_horizontal(true)
vicious.register(swap_progressbar, vicious.widgets.mem, "$5", 5)

memory_widget = wibox.layout.fixed.horizontal()
memory_widget:add(memory_label)
memory_widget:add(memory_progressbar)
memory_widget:add(swap_label)
memory_widget:add(swap_progressbar)
