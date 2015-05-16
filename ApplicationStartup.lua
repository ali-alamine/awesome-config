local awful = require("awful")

-- This function finds if a process is running, if not, runs it
-- It also checks for python scripts, java apps, etc.
function runOnce(appName, processName)
	if processName == nil then
		processName = appName
	end
	local fd = io.popen(
						"ps ax | grep -v grep | grep " .. processName)
	local pid = fd:read("*all")
	io.close(fd)
	if pid == nil or pid == '' then
		awful.util.spawn_with_shell(appName)
	end
end

-- Screen Saver
runOnce("/usr/bin/xscreensaver -no-splash", "xscreensaver")

-- Browser
runOnce("google-chrome-unstable", "chrome")

-- Music Player
runOnce("vlc", "vlc")

-- Clipboard manager
runOnce("clipit")

-- Network manager
runOnce("wicd-gtk", "wicd-client")
