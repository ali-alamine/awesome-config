local awful = require("awful")
local vicious = require("vicious")
local wibox = require("wibox")

-- Creating a cpu graph

local cpuwidgetGraph = awful.widget.graph()
cpuwidgetGraph:set_width(50)
cpuwidgetGraph:set_background_color("#494B4F")
cpuwidgetGraph:set_color({ type = "linear", from = { 0, 0 }, to = { 50, 0 },
		stops = { { 0, "#FF5656" }, { 0.5, "#88A175" }, { 1, "#AECF96" }}})
vicious.cache(vicious.widgets.cpu)
vicious.register(cpuwidgetGraph, vicious.widgets.cpu, "$1", 1)


local cpuWidgetLabel = wibox.widget.textbox()
cpuWidgetLabel:set_text("CPU:")

cpuwidget = wibox.layout.fixed.horizontal()
cpuwidget:add(cpuWidgetLabel)
cpuwidget:add(cpuwidgetGraph)
