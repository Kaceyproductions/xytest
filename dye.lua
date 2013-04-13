minetest.register_craft({
	output = 'dye:white',
	recipe = {
		{'xytest:xychoridite'},
		{'xytest:xychoridite'},
	}
})

minetest.register_craft({
	output = 'dye:black',
	recipe = {
		{'xytest:xychoridite','xytest:xychoridite'},
	}
})
minetest.register_craft({
	output = 'dye:red',
	recipe = {
		{'xytest:xychoridite',''},
		{'','xytest:xychoridite'},
	}
})
minetest.register_craft({
	output = 'dye:blue',
	recipe = {
		{'','xytest:xychoridite'},
		{'xytest:xychoridite',''},
	}
})
minetest.register_craft({
	output = 'dye:yellow',
	recipe = {
		{'xytest:xychoridite','xytest:xychoridite'},
		{'', 'xytest:xychoridite'},
	}
})