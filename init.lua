minetest.register_node("xytest:stone_with_ore", {
	description = "Xychorium Ore",
	tiles = {"default_stone.png^xytest_ore.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'xytest:xychorium',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xytest:stone_with_ore",
	wherein        = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 8,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = 64,
})
minetest.register_craftitem("xytest:xyxhorium", {
	description = "Xychorium",
	inventory_image = "xytest_xychorium.png",
})
minetest.register_node("xytest:xychorium_brick_basic", {
	description = "Basic Xychorium Brick",
	tiles = {"xytest_brick_basic.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = 'xytest:xychorium_brick_basic 4',
	recipe = {
		{'xytest:xychorium', 'xytest:xychorium'},
		{'xytest:xychorium', 'xytest:xychorium'},
	}
})