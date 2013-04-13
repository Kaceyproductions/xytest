minetest.register_node("xytest:stone_with_xychoridite", {
	description = "Xychorium Ore",
	tiles = {"default_stone.png^xytest_xychoridite.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'xytest:xychoridite',
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xytest:stone_with_xychoridite",
	wherein        = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 8,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = 64,
})
minetest.register_craftitem("xytest:xychoridite", {
	description = "Xychoridite",
	inventory_image = "xytest_xychoridite.png",
})
minetest.register_craft({
	output = 'xytest:xychorium',
	recipe = {
		{'xytest:xychoridite', 'xytest:xychoridite'},
		{'xytest:xychoridite', 'xytest:xychoridite'},
	}
})