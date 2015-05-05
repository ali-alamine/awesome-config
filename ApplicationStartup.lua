local awful = require("awful")

-- Screen Saver
awful.util.spawn_with_shell("/usr/bin/xscreensaver -no-splash &")

-- Browser
awful.util.spawn_with_shell("google-chrome-unstable &")

-- Music Player
awful.util.spawn_with_shell("vlc &")

-- Clipboard manager
awful.util.spawn_with_shell("clipit &")

-- Network manager
awful.util.spawn_with_shell("wicd-gtk &")
