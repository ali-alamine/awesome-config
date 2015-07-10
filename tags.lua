local awful = require("awful")
-- {{{ Tags
	-- Define a tag table which hold all screen tags.
	tags = {}
	for s = 1, screen.count() do
	    -- Each screen has its own tag table.
			local tag = {names = { "web", "terminals", 3, 4, 5, 6, "games", "files", "vlc" },
				layout = {layouts[10],layouts[2],layouts[2],layouts[2],layouts[2],layouts[2],
									layouts[2],layouts[2],layouts[10]}}
	    tags[s] = awful.tag( tag.names, s, tag.layout)
	end
-- }}}
