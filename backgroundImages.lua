local gears = require("gears")
-- Automatically fetch images from the backgrounds folder and randomly flip
-- the backgrounds


-- {{{ Function definitions

-- scan directory, and optionally filter outputs
function scandir(directory, filter)
    local i, t, popen = 0, {}, io.popen
    if not filter then
        filter = function(s) return true end
    end
    print(filter)
    for filename in popen('ls -a "'..directory..'"'):lines() do
        if filter(filename) then
            i = i + 1
            t[i] = filename
        end
    end
    return t
end

-- }}}

-- configuration - edit to your liking
local wp_index = 1
local wp_timeout  = 15
local wp_path = "/home/ali/backgroundimages/"
local wp_filter = 
					function(s) 
							return string.match(s,"%.png$") or string.match(s,"%.jpg$") end
local wp_files = scandir(wp_path, wp_filter)
 
-- setup the timer
local wp_timer = timer { timeout = wp_timeout }
wp_timer:connect_signal("timeout", function()
 
  -- set wallpaper to current index for all screens
	print(wp_path)
	print(wp_files[0])
	print(wp_index)
  for s = 1, screen.count() do
    gears.wallpaper.maximized(wp_path .. wp_files[wp_index], s, true)
  end
 
  -- stop the timer (we don't need multiple instances running at the same time)
  wp_timer:stop()
 
  -- get next random index
  wp_index = math.random( 1, #wp_files)
 
  --restart the timer
  wp_timer.timeout = wp_timeout
  wp_timer:start()
end)
 
-- initial start when rc.lua is first run
wp_timer:start()
