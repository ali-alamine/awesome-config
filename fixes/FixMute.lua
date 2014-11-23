-- Fix the sound muting in alsamixer
unmute_timer = timer({ timeout = 1 })
unmute_timer:connect_signal("timeout", function()
	local fd = io.popen("amixer sset Master unmute")
	local str = fd:read("*l")
	io.close(fd)
end)
unmute_timer:start()
