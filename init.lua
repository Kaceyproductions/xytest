minetest.register_node("xytest:stone_with_ore", {
	description = "Xychorium Ore",
	tiles = {"default_stone.png^xytest_ore.png"},
	is_ground_content = true,
	groups = {cracky=3, not_in_creative_inventory=1},
	drop = 'xytest:xychorium',
	sounds = default.node_sound_stone_defaults(),
})
