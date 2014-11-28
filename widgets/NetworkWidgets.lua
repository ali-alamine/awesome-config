local awful = require("awful")
local wibox = require("wibox")
local vicious = require("vicious")
vicious.cache(vicious.widgets.net)

local upload_speed = 0
local download_speed = 0

local download_icon = wibox.widget.imagebox()
download_icon:set_image(awful.util.getdir("config") .. "/icons/download_icon.png")
download_icon:fit(16, 16)

local upload_icon   = wibox.widget.imagebox()
upload_icon:set_image(awful.util.getdir("config") .. "/icons/upload-icon.png")
upload_icon:fit(16, 16)

local down_textbox = wibox.widget.textbox()
vicious.register(down_textbox, vicious.widgets.net, "${wlp2s0 down_kb} ", 3)

local up_textbox = wibox.widget.textbox()
vicious.register(up_textbox, vicious.widgets.net, "${wlp2s0 up_kb}", 3)

upload_widget = wibox.layout.fixed.horizontal()
upload_widget:add(upload_icon)
upload_widget:add(up_textbox)

download_widget = wibox.layout.fixed.horizontal()
download_widget:add(download_icon)
download_widget:add(down_textbox)
