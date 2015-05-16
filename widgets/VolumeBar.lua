local blingbling = require("blingbling")

my_volume=blingbling.volume.new()
my_volume:set_height(18)
my_volume:set_width(30)
my_volume:set_graph_color("#449911")
--bind the volume widget on the master channel
my_volume:update_master()
my_volume:set_master_control()
my_volume:set_bar(true)
