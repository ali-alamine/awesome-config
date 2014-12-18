local awful = require("awful")
-- {{{ Tags
	-- Define a tag table which hold all screen tags.
	tags = {}
	for s = 1, screen.count() do
	    -- Each screen has its own tag table.
			tags = {names = { "web", "terminals", 3, 4, 5, 6, "games", "files", "vlc" },
				layout = {layouts[2],layouts[2],layouts[2],layouts[2],layouts[2],layouts[2],
									layouts[2],layouts[2],layouts[1]}}
	    tags[s] = awful.tag( tags.names, s, tags.layout)
	end
-- }}}
