--[[
Map Tools: node definitions

Copyright © 2012-2019 Hugo Locurcio and contributors.
Licensed under the zlib license. See LICENSE.md for more information.
--]]

local S = maptools.S

maptools.creative = maptools.config["hide_from_creative_inventory"]

-- Redefine cloud so that the admin pickaxe can mine it
minetest.register_node(":default:cloud", {
	description = S("Cloud"),
	tiles = {"default_cloud.png"},
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	sounds = default.node_sound_defaults(),
	on_drop = maptools.drop_msg
})

-- Nodes

minetest.register_node("maptools:black", {
	description = S("Black"),
	range = 12,
	stack_max = 10000,
	tiles = {"black.png"},
	drop = "",
	post_effect_color = {a=255, r=0, g=0, b=0},
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	sounds = default.node_sound_stone_defaults(),
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:white", {
	description = S("White"),
	range = 12,
	stack_max = 10000,
	tiles = {"white.png"},
	drop = "",
	post_effect_color = {a=255, r=128, g=128, b=128},
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	sounds = default.node_sound_stone_defaults(),
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:playerclip", {
	description = S("Player Clip"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^dye_green.png",
	drawtype = "airlike",
	paramtype = "light",
	pointable = false,
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:fake_walkable", {
	description = S("Player Clip"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^dye_green.png",
	drawtype = "airlike",
	paramtype = "light",
	pointable = false,
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{0, 0, 0, 0, 0, 0},
		},
	},
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:fullclip", {
	description = S("Full Clip"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^dye_blue.png",
	drawtype = "airlike",
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:fake_walkable_pointable", {
	description = S("Player Clip"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^dye_green.png",
	drawtype = "airlike",
	paramtype = "light",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {
			{0, 0, 0, 0, 0, 0},
		},
	},
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:ignore_like", {
	description = S("Ignore-like"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^dye_pink.png",
	tiles = {"invisible.png"},
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:ignore_like_no_clip", {
	description = S("Ignore-like (no clip)"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^dye_purple.png",
	tiles = {"invisible.png"},
	paramtype = "light",
	walkable = false,
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	on_drop = maptools.drop_msg
})


minetest.register_node("maptools:ignore_like_no_point", {
	description = S("Ignore-like (no point)"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^dye_purple.png",
	tiles = {"invisible.png"},
	paramtype = "light",
	pointable = false,
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:ignore_like_no_clip_no_point", {
	description = S("Ignore-like (no clip, no point)"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^dye_pink.png",
	tiles = {"invisible.png"},
	paramtype = "light",
	walkable = false,
	pointable = false,
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:fullclip_face", {
	description = S("Full Clip Face"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^dye_white.png",
	drawtype = "nodebox",
	tiles = {"invisible.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4999, 0.5},
	},
	drop = "",
	groups = {
		unbreakable = 1,
		not_in_creative_inventory = maptools.creative,
		fall_damage_add_percent = -100,
	},
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:playerclip_bottom", {
	description = S("Player Clip Bottom Face"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^dye_orange.png",
	drawtype = "nodebox",
	tiles = {"invisible.png"},
	pointable = false,
	paramtype = "light",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4999, 0.5},
	},
	drop = "",
	groups = {
		unbreakable = 1,
		not_in_creative_inventory = maptools.creative,
		fall_damage_add_percent = -100,
	},
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:playerclip_top", {
	description = S("Player Clip Top Face"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^dye_yellow.png",
	drawtype = "nodebox",
	tiles = {"invisible.png"},
	pointable = false,
	paramtype = "light",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {-0.5, 0.4999, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "",
	groups = {
		unbreakable = 1,
		not_in_creative_inventory = maptools.creative,
		fall_damage_add_percent = -100,
	},
	on_drop = maptools.drop_msg
})

for pusher_num=1,10,1 do
	minetest.register_node("maptools:pusher_" .. pusher_num, {
		description = S("Pusher (%s)"):format(pusher_num),
		range = 12,
		stack_max = 10000,
		inventory_image = "default_steel_block.png^default_apple.png",
		drawtype = "nodebox",
		tiles = {"invisible.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -0.4999, 0.5},
		},
		drop = "",
		groups = {
			unbreakable = 1,
			not_in_creative_inventory = maptools.creative,
			fall_damage_add_percent = -100,
			bouncy = pusher_num * 100,
		},
		on_drop = maptools.drop_msg
	})
end

minetest.register_node("maptools:lightbulb", {
	description = S("Light Bulb"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^default_mese_crystal_fragment.png",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	light_source = 14,
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:nobuild", {
	description = S("Build Prevention"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^bones_bones.png",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:nointeract", {
	description = S("Interact Prevention"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^default_scorched_stuff.png",
	drawtype = "airlike",
	walkable = false,
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:climb", {
	description = S("Climb Block"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^default_ladder_wood.png",
	drawtype = "airlike",
	walkable = false,
	climbable = true,
	pointable = false,
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	on_drop = maptools.drop_msg
})

for damage_num=1,5,1 do
minetest.register_node("maptools:damage_" .. damage_num, {
	description = S("Damaging Block (%s)"):format(damage_num),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^farming_cotton_" .. damage_num .. ".png",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	damage_per_second = damage_num,
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	on_drop = maptools.drop_msg
})
end

minetest.register_node("maptools:kill", {
	description = S("Kill Block"),
	range = 12,
	stack_max = 10000,
	inventory_image = "default_steel_block.png^dye_black.png",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	damage_per_second = 20,
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:smoke", {
	description = S("Smoke Block"),
	range = 12,
	stack_max = 10000,
	tiles = {"maptools_smoke.png"},
	drawtype = "allfaces_optional",
	walkable = false,
	paramtype = "light",
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	post_effect_color = {a=192, r=96, g=96, b=96},
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:ladder", {
	description = S("Fake Ladder"),
	range = 12,
	stack_max = 10000,
	drawtype = "signlike",
	tiles = {"default_ladder_wood.png"},
	inventory_image = "default_ladder_wood.png",
	wield_image = "default_ladder_wood.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	sunlight_propagates = true,
	selection_box = {
		type = "wallmounted",
	},
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	sounds = default.node_sound_wood_defaults(),
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:permanent_fire", {
	description = S("Permanent Fire"),
	range = 12,
	stack_max = 10000,
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {{
		name="fire_basic_flame_animated.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1},
	}},
	inventory_image = "fire_basic_flame.png",
	light_source = 14,
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	sunlight_propagates = true,
	walkable = false,
	damage_per_second = 4,
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:fake_fire", {
	description = S("Fake Fire"),
	range = 12,
	stack_max = 10000,
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {{
		name="fire_basic_flame_animated.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1},
	}},
	inventory_image = "fire_basic_flame.png",
	light_source = 14,
	drop = "",
	groups = {unbreakable = 1, not_in_creative_inventory = maptools.creative},
	sunlight_propagates = true,
	walkable = false,
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:igniter", {
	drawtype = "airlike",
	range = 12,
	stack_max = 10000,
	description = S("Igniter"),
	paramtype = "light",
	inventory_image = "fire_basic_flame.png",
	drop = "",
	groups = {igniter=2, unbreakable = 1, not_in_creative_inventory = maptools.creative},
	sunlight_propagates = true,
	pointable = false,
	walkable = false,
	on_drop = maptools.drop_msg
})

minetest.register_node("maptools:superapple", {
	description = S("Super Apple"),
	range = 12,
	stack_max = 10000,
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"maptools_superapple.png"},
	inventory_image = "maptools_superapple.png",
	paramtype = "light",
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	walkable = false,
	groups = {fleshy=3, dig_immediate=3, not_in_creative_inventory = maptools.creative},
	on_use = minetest.item_eat(20),
	sounds = default.node_sound_defaults(),
	on_drop = maptools.drop_msg,
	on_place = maptools.place_msg,
})
