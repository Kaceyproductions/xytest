minetest.register_node("xytest:stone_with_xychorium", {
	description = "Xychorium Ore",
	tiles = {"default_stone.png^xytest_mineral_xychorium.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'xytest:xychorium',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xytest:stone_with_xychorium",
	wherein        = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 8,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = 64,
})
minetest.register_craftitem("xytest:xychorium", {
	description = "Xychorium",
	inventory_image = "xytest_xychorium.png",
})
minetest.register_node("xytest:xychorium_brick_white", {
	description = "White Xychorium Brick",
	tiles = {"xytest_brick_white.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xytest:xychorium_brick_white 4',
	recipe = {
		{'xytest:xychorium', 'xytest:xychorium'},
		{'xytest:xychorium', 'xytest:xychorium'},
	}
})
local xytest = {}
-- Now to make different colored Bricks
xytest.dyes = {
	{"white",      "White",      nil},
	{"grey",       "Grey",       "basecolor_grey"},
	{"black",      "Black",      "basecolor_black"},
	{"red",        "Red",        "basecolor_red"},
	{"yellow",     "Yellow",     "basecolor_yellow"},
	{"green",      "Green",      "basecolor_green"},
	{"cyan",       "Cyan",       "basecolor_cyan"},
	{"blue",       "Blue",       "basecolor_blue"},
	{"magenta",    "Magenta",    "basecolor_magenta"},
	{"orange",     "Orange",     "excolor_orange"},
	{"violet",     "Violet",     "excolor_violet"},
	{"brown",      "Brown",      "unicolor_dark_orange"},
	{"pink",       "Pink",       "unicolor_light_red"},
	{"dark_grey",  "Dark Grey",  "unicolor_darkgrey"},
	{"dark_green", "Dark Green", "unicolor_dark_green"},
}
for _, row in ipairs(xytest.dyes) do
	local name = row[1]
	local desc = row[2]
	local craft_color_group = row[3]
	minetest.register_node("xytest:xychorium_brick_"..name, {
		description = desc.." Xychorium Brick",
		tiles = {"xytest_brick_"..name..".png"},
		{cracky=3}
	})
	if craft_color_group then
		minetest.register_craft({
			type = "shapeless",
			output = 'xytest:xychorium_brick_'..name..' 1',
			recipe = {'group:dye,'..craft_color_group, 'xytest:xychorium_brick_white'},
		})
		end
	if craft_color_group then
		minetest.register_craft({
			type = "shapeless",
			output = 'xytest:xychorium_brick_white 1',
			recipe = {'dye:white', 'xytest:xychorium_brick_'..name},
		})
		end
end
dofile(minetest.get_modpath("xytest").."/craft.lua")
dofile(minetest.get_modpath("xytest").."/dye.lua")
dofile(minetest.get_modpath("xytest").."/xychoridite.lua")
