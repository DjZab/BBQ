local food = {
	{"bbq:bacon", "Bacon", "bbq_bacon.png", 7},
	{"bbq:bacon_cheeseburger", "Bacon Cheeseburger", "bbq_bacon_cheeseburger.png", 9},
	{"bbq:bacon_raw", "Bacon Raw", "bbq_bacon_raw.png", 3},
	{"bbq:bbq_beef_ribs", "BBQ Ribs", "bbq_beef_ribs.png", 9},
	{"bbq:bbq_beef_ribs_raw", "BBQ Ribs Raw", "bbq_beef_ribs_raw.png", 4},
	{"bbq:bbq_chicken", "BBQ Chicken", "bbq_bbq_chicken.png", 8},
	{"bbq:bbq_chicken_raw", "BBQ Chicken Raw", "bbq_bbq_chicken_raw.png", 4},
	{"bbq:beef", "Beef", "bbq_beef_cooked.png", 8},
	{"bbq:beef_jerky", "Beef Jerky", "bbq_beef_jerky.png", 5},
	{"bbq:beef_jerky_raw", "Beef Jerky Raw", "bbq_beef_jerky_raw.png", 2},
	{"bbq:beef_raw", "Raw Beef", "bbq_beef_raw.png", 3},
	{"bbq:brisket", "BBQ Brisket", "bbq_brisket.png", 9},
	{"bbq:brisket_raw", "BBQ Brisket Raw", "bbq_brisket_raw.png", 4},
	{"bbq:cheese_steak", "Cheese Steak", "bbq_cheese_steak.png", 8},
	{"bbq:corned_beef", "Corned Beef", "bbq_corned_beef.png", 10},
	{"bbq:corned_beef_raw", "Corned Beef Raw", "bbq_corned_beef_raw.png", 5},
	{"bbq:grilled_corn", "Grilled Corn", "bbq_grilled_corn.png", 8},
	{"bbq:grilled_corn_raw", "Grilled Corn Raw", "bbq_grilled_corn_raw.png", 5},
	{"bbq:grilled_pizza", "Grilled Pizza", "bbq_grilled_pizza.png", 8},
	{"bbq:grilled_pizza_raw", "Grilled Pizza Raw", "bbq_grilled_pizza_raw.png", 5},
	{"bbq:grilled_tomato", "Grilled Tomato", "bbq_grilled_tomato.png", 5},
	{"bbq:ham", "Ham", "bbq_ham.png", 9},
	{"bbq:ham_raw", "Ham Raw", "bbq_ham_raw.png", 4},
	{"bbq:hamburger", "Hamburger", "bbq_hamburger.png", 9},
	{"bbq:hamburger_patty", "Hamburger Patty", "bbq_hamburger_patty.png", 8},
	{"bbq:hamburger_patty_raw", "Hamburger Patty Raw", "bbq_hamburger_patty_raw.png", 3},
	{"bbq:hot_wings", "Hot Wings", "bbq_hot_wings.png", 8},
	{"bbq:hot_wings_raw", "Hot Wings Raw", "bbq_hot_wings_raw.png", 3},
	{"bbq:hotdog", "Hot Dog", "bbq_hotdog.png", 8},
	{"bbq:hotdog_cooked", "Hotdog Cooked", "bbq_hotdog_cooked.png", 7},
	{"bbq:hotdog_raw", "Pulled Pork", "bbq_pulled_pork.png", 8},
	{"bbq:lamb_kebab", "Lamb Kebab", "bbq_lamb_kebab.png", 4},
	{"bbq:lamb_kebab_raw", "Lamb Kebab Raw", "bbq_lamb_kebab_raw.png", 2},
	{"bbq:leg_lamb", "Leg of Lamb", "bbq_leg_lamb.png", 9},
	{"bbq:leg_lamb_raw", "Leg of Lamb Raw", "bbq_leg_lamb_raw.png", 4},
	{"bbq:london_broil", "London Broil", "bbq_london_broil.png", 7},
	{"bbq:london_broil_raw", "London Broil Raw", "bbq_london_broil_raw.png", 3},
	{"bbq:pepper_steak", "Pepper Steak", "bbq_pepper_steak.png", 10},
	{"bbq:pepper_steak_raw", "Pepper Steak Raw", "bbq_pepper_steak_raw.png", 4},
	{"bbq:portebello_steak", "Portebello Steak", "bbq_portebello_steak.png", 9},
	{"bbq:portebello_steak_raw", "Portebello Steak Raw", "bbq_portebello_steak_raw.png", 5},
	{"bbq:rack_lamb", "Rack of Lamb", "bbq_rack_lamb.png", 10},
	{"bbq:rack_lamb_raw", "Rack of Lamb Raw", "bbq_rack_lamb_raw.png", 5},
	{"bbq:smoked_pepper", "Smoked Pepper", "bbq_smoked_pepper.png", 5},
	{"bbq:stuffed_chop", "Stuffed Chop", "bbq_stuffed_chop.png", 8},
	{"bbq:stuffed_chop_raw", "Stuffed Chop Raw", "bbq_stuffed_chop_raw.png", 3},
	{"bbq:stuffed_mushroom", "Stuffed Mushroom", "bbq_stuffed_mushroom.png", 9},
	{"bbq:stuffed_mushroom_raw", "Stuffed Mushroom Raw", "bbq_stuffed_mushroom_raw.png", 5},
	{"bbq:stuffed_pepper", "Stuffed Pepper", "bbq_stuffed_pepper.png", 9},
	{"bbq:stuffed_pepper_raw", "Stuffed Pepper Raw", "bbq_stuffed_pepper_raw.png", 4},
	{"bbq:veggie_kebab", "Veggie Kebab", "bbq_veggie_kebab.png", 8},
	{"bbq:veggie_kebab_raw", "Veggie Kebab Raw", "bbq_veggie_kebab_raw.png", 4},
	{"bbq:veggie_packet", "Veggie Packet", "bbq_veggie_packet.png", 5},
	{"bbq:veggie_packet_raw", "Veggie Packet Raw", "bbq_veggie_packet_raw.png", 4}
}

for _,name in pairs(food) do
	minetest.register_craftitem(food[_][1], {
		description = (food[_][2]),
		inventory_image = food[_][3],
		on_use = minetest.item_eat(food[_][4]),
	})
end

-- Kettle Grill
minetest.register_node("bbq:kettle_grill", {
	description = ("Kettle Grill"),
	inventory_image = "bbq_kettle_grill.png",
	wield_image = "bbq_kettle_grill.png",
	drawtype = "plantlike",
	tiles = {"bbq_kettle_grill.png"},
	groups = {grill=1, vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_metal_defaults(),
})

-- Sawdust
minetest.register_node("bbq:sawdust", {
	description = ("Saw Dust"),
	inventory_image = "bbq_sawdust.png",
	wield_image = "bbq_sawdust.png",
	drawtype = "plantlike",
	tiles = {
		"bbq_sawdust.png",
	},
	groups = {choppy=3, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_leaves_defaults(),
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
})

-- Chimeny Smoke
minetest.register_node("bbq:chimney_smoke", {
	description = ("Chimney Smoke"),
	inventory_image = "bbq_chimney_smoke.png",
	wield_image = "bbq_chimney_smoke.png",
	drawtype = "plantlike",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	tiles = {
		{
			image = "bbq_chimney_smoke_animation.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.5
			},
		},

	},


	groups = {dig_immediate = 3, attached_node = 1},
})

-- Foil
minetest.register_craftitem("bbq:foil", {
	description = ("Foil"),
	inventory_image = "bbq_foil.png",
	wield_image = "bbq_foil.png",
})

-- Charocal Briquette
minetest.register_craftitem("bbq:charcoal_briquette", {
	description = ("Charcoal Briquette"),
	inventory_image = "bbq_charcoal_briquette.png",
	wield_image = "bbq_charcoal_briquette.png",
})

minetest.register_craft({
	type = "fuel",
	recipe = "bbq:charcoal_briquette",
	burntime = 10,
})

-- Charocal Lump
minetest.register_craftitem("bbq:charcoal_lump", {
	description = ("Charcoal Lump"),
	inventory_image = "bbq_charcoal_lump.png",
	wield_image = "bbq_charcoal_lump.png",
})

minetest.register_craft({
	type = "fuel",
	recipe = "bbq:charcoal_lump",
	burntime = 25,
})

-- Charcoal Bag	
minetest.register_node("bbq:charcoal_bag", {
	description = ("Bag o' Charcoal"),
	inventory_image = "bbq_charcoal_bag.png",
	wield_image = "bbq_charcoal_bag.png",
	drawtype = "plantlike",
	sunlight_propagates = true,
	tiles = {
		"bbq_charcoal_bag_top.png", "bbq_charcoal_bag_top.png",
		"bbq_charcoal_bag_side.png", "bbq_charcoal_bag_side.png",
		"bbq_charcoal_bag_back.png", "bbq_charcoal_bag.png",
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
				{-0.21, -0.5, -0.1, 0.21, 0.22, 0.1},
				{-0.235, 0.22, -0.025, 0.235, 0.25, 0.025},
			},
		},
})

minetest.register_craft({
	type = "fuel",
	recipe = "bbq:charcoal_bag",
	burntime = 150,
})

-- Propane
minetest.register_node("bbq:propane", {
	description = ("Propane"),
	inventory_image = "bbq_propane.png",
	paramtype = "light",
	paramtype2 = "facedir",
	wield_image = "bbq_propane.png",
	drawtype = "plantlike",
	sunlight_propagates = true,
	tiles = {"bbq_propane.png"},
	groups = {explody = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_craft({
	type = "fuel",
	recipe = "bbq:propane",
	burntime = 500,
})

-- Beer
minetest.register_node("bbq:beer", {
	description = ("Beer"),
	inventory_image = "bbq_beer.png",
	wield_image = "bbq_beer.png",
	drawtype = "plantlike",
	sunlight_propagates = true,
	tiles = {
		"bbq_beer_top.png", "bbq_beer_top.png^[transformFy",
		"bbq_beer.png", "bbq_beer.png",
		"bbq_beer.png", "bbq_beer.png^[transformFx",
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
				{-0.18, -0.5, -0.18, 0.18, 0.3, 0.18},
				{-0.3, -0.25, -0.06, -0.18, 0.18, 0.06},

			},
		},


	on_use = minetest.item_eat(6),
})

-- Vinegar
minetest.register_node("bbq:vinegar", {
	description = ("Vinegar"),
	inventory_image = "bbq_vinegar.png",
	wield_image = "bbq_vinegar.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_vinegar.png"},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

-- Vinegar Mother
minetest.register_node("bbq:vinegar_mother", {
	description = ("Vinegar Mother"),
	inventory_image = "bbq_vinegar_mother.png",
	wield_image = "bbq_vinegar_mother.png",
	drawtype = "plantlike",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"bbq_vinegar_mother.png"},
	groups = {food_vinegarmother=1, vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

--Tomato Sauce
minetest.register_craftitem("bbq:tomato_sauce", {
	description = ("Tomato Sauce"),
	inventory_image = "bbq_tomato_sauce.png",
	groups = { food_tomato_sauce=1, vessel=1 },
	on_use = minetest.item_eat(2)
})

--Paprika
minetest.register_node("bbq:paprika", {
	description = ("Smoked Paprika"),
	inventory_image = "bbq_paprika.png",
	wield_image = "bbq_paprika.png",
	drawtype = "plantlike",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"bbq_paprika.png"},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

-- Sea Salt
minetest.register_node("bbq:sea_salt", {
	description = ("Sea Salt"),
	inventory_image = "bbq_sea_salt.png",
	wield_image = "bbq_sea_salt.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_sea_salt.png"},
	groups = {food_salt=1, vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

-- Brine
minetest.register_node("bbq:brine", {
	description = ("Brine"),
	inventory_image = "bbq_brine.png",
	wield_image = "bbq_brine.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_brine.png"},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

-- Pickled Peppers
minetest.register_node("bbq:pickled_peppers", {
	description = ("Pickled Peppers"),
	inventory_image = "bbq_pickled_peppers.png",
	wield_image = "bbq_pickled_peppers.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_pickled_peppers.png"},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
	on_use = minetest.item_eat(5),
})

-- Steak Sauce
minetest.register_node("bbq:steak_sauce", {
	description = ("Steak Sauce"),
	inventory_image = "bbq_steak_sauce.png",
	wield_image = "bbq_steak_sauce.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_steak_sauce.png"},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

-- Liquid Smoke
minetest.register_node("bbq:liquid_smoke", {
	description = ("Liquid Smoke"),
	inventory_image = "bbq_liquid_smoke.png",
	wield_image = "bbq_liquid_smoke.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_liquid_smoke.png"},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

-- Sugar
minetest.register_node("bbq:sugar", {
	description = ("Sugar"),
	inventory_image = "bbq_sugar.png",
	wield_image = "bbq_sugar.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_sugar.png"},
	groups = {vessel = 1, food_sugar=1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
	on_use = minetest.item_eat(2),
})

-- Molasses
minetest.register_node("bbq:molasses", {
	description = ("Molasses"),
	inventory_image = "bbq_molasses.png",
	wield_image = "bbq_molasses.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_molasses.png"},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

-- Hot Sauce
minetest.register_node("bbq:hot_sauce", {
	description = ("Hot Sauce"),
	inventory_image = "bbq_hot_sauce.png",
	wield_image = "bbq_hot_sauce.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_hot_sauce.png"},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

-- BBQ Sauce
minetest.register_node("bbq:bbq_sauce", {
	description = ("BBQ Sauce"),
	inventory_image = "bbq_bbq_sauce.png",
	wield_image = "bbq_bbq_sauce.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_bbq_sauce.png"},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("bbq:beef_map", {
	description = "Beef Map",
	inventory_image = "bbq_cow_map.png",
	tiles = {
		"default_junglewood.png", "default_junglewood.png",
		"default_junglewood.png", "default_junglewood.png",
		"default_junglewood.png", "bbq_cow_map.png",
	},

	paramtype2 = "facedir",
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, 0.4, 0.5, 0.5, 0.5},

			},
		},
	groups = {choppy=3, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("bbq:smoker_blueprint", {
	description = "Smoker Blueprint",
	inventory_image = "bbq_smoker_blueprint.png",
	tiles = {
		"default_pine_wood.png", "default_pine_wood.png",
		"default_pine_wood.png", "default_pine_wood.png",
		"default_pine_wood.png", "bbq_smoker_blueprint.png",
	},

	paramtype2 = "facedir",
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, 0.4, 0.5, 0.5, 0.5},

			},
		},
	groups = {choppy=3, oddly_breakable_by_hand=2, flammable=3},
	sounds = default.node_sound_wood_defaults(),
})

-- Yeast
minetest.register_node("bbq:yeast", {
	description = ("Yeast"),
	inventory_image = "bbq_yeast.png",
	wield_image = "bbq_yeast.png",
	paramtype = "light",
	paramtype2 = "facedir",
	drawtype = "plantlike",
	tiles = {"bbq_yeast.png"},
	groups = {food_vinegarmother=1, vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

------------
--Utinsels--
------------

--Spatula
minetest.register_node("bbq:spatula", {
	description = ("Spatula"),
	inventory_image = "bbq_spatula.png",
	wield_image = "bbq_spatula.png",
	groups = {dig_immediate = 3, cracky=1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_metal_defaults(),


	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"bbq_spatula_tile.png", "bbq_spatula_tile.png",
		"bbq_spatula_tile.png", "bbq_spatula_tile.png",
		"bbq_spatula_tile.png", "bbq_spatula_tile.png",
	},
	groups = {vessel = 1, dig_immediate = 3},
	sounds = default.node_sound_leaves_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
				{-0.15, -0.45, 0.5, 0.125, -.218, 0.45,},
				{-0.105, -0.218, 0.5, 0.085, -0.19, 0.45,},
				{-0.0625, -0.19, 0.5, 0.03125, .5, 0.45,},
--				{-0.15, -0.45, 0.5, 0.125, -.1, 0.45,},
		},
	},

on_use = function(itemstack, placer, pointed_thing)

	-- check if a grill
	if minetest.get_node(pointed_thing.under).name == "bbq:kettle_grill_active" then
		     minetest.sound_play("bbq_sizzle",
				{pos=pointed_thing.under, max_hear_distance = 10,})

	else

	if minetest.get_node(pointed_thing.under).name == "bbq:propane_grill_active" then
		     minetest.sound_play("bbq_sizzle",
				{pos=pointed_thing.under, max_hear_distance = 10,})

	else

	if minetest.get_node(pointed_thing.under).name == "bbq:smoker_active" then
		     minetest.sound_play("bbq_sizzle",
				{pos=pointed_thing.under, max_hear_distance = 10,})
			end
		end
	end
end

})

--Basting Brush
minetest.register_node("bbq:basting_brush", {
	description = ("Basting Brush"),
	inventory_image = "bbq_basting_brush.png",
	wield_image = "bbq_basting_brush.png",
	groups = {dig_immediate = 3, cracky=1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_metal_defaults(),


	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"bbq_basting_brush_hang.png", "bbq_basting_brush_hang.png",
		"bbq_basting_brush_hang.png", "bbq_basting_brush_hang.png",
		"bbq_basting_brush_hang.png", "bbq_basting_brush_hang.png",
	},
	groups = {vessel = 1, dig_immediate = 3},
	sounds = default.node_sound_leaves_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
				{-0.085, -0.45, 0.5, 0.085, -.2525, 0.45,},
				{-0.0625, -0.2525, 0.5, 0.0625, -.218, 0.45,},
				{-0.03, -0.218, 0.5, 0.03, 0.0	, 0.45,},
				{-0.0625, 0.0, 0.5, 0.0625, 0.465, 0.45,},
				{-0.03, .465, 0.5, 0.03, .5, 0.45,},
		},
	},

on_use = function(itemstack, placer, pointed_thing)

	-- check if a grill
	if minetest.get_node(pointed_thing.under).name == "bbq:kettle_grill_active" then
		     minetest.sound_play("bbq_basting",
				{pos=pointed_thing.under, max_hear_distance = 10,})

	else

	if minetest.get_node(pointed_thing.under).name == "bbq:propane_grill_active" then
		     minetest.sound_play("bbq_basting",
				{pos=pointed_thing.under, max_hear_distance = 10,})

	else

	if minetest.get_node(pointed_thing.under).name == "bbq:smoker_active" then
		     minetest.sound_play("bbq_basting",
				{pos=pointed_thing.under, max_hear_distance = 10,})
			end
		end
	end
end

})

--Grill Brush
minetest.register_node("bbq:grill_brush", {
	description = ("Grill Brush"),
	inventory_image = "bbq_grill_brush.png",
	wield_image = "bbq_grill_brush.png",
	groups = {dig_immediate = 3, cracky=1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_metal_defaults(),


	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"bbq_grill_brush_hang_top.png", "bbq_grill_brush_hang.png",
		"bbq_grill_brush_hang.png", "bbq_grill_brush_hang.png",
		"bbq_grill_brush_hang.png", "bbq_grill_brush_hang.png",
	},
	groups = {vessel = 1, dig_immediate = 3},
	sounds = default.node_sound_leaves_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
				{-0.12, -0.5, 0.49, 0.12, -.467, 0.48,},
				{-0.15, -0.467, 0.5, 0.15, -.2225, 0.45,},
				{-0.125, -0.44, 0.5, 0.125, -.25, 0.35,},
				{-0.03, -0.2225, 0.5, 0.03, 0.13, 0.45,},
				{-0.0625, 0.13	, 0.5, 0.0625, 0.485, 0.45,},
				{-0.03, .485, 0.5, 0.03, .5, 0.45,},
		},
	},

on_use = function(itemstack, placer, pointed_thing)

	-- check if a grill
	if minetest.get_node(pointed_thing.under).name == "bbq:kettle_grill_active" then
		     minetest.sound_play("bbq_grill_brush",
				{pos=pointed_thing.under, max_hear_distance = 10,})

	else

	if minetest.get_node(pointed_thing.under).name == "bbq:propane_grill_active" then
		     minetest.sound_play("bbq_grill_brush",
				{pos=pointed_thing.under, max_hear_distance = 10,})

	else

	if minetest.get_node(pointed_thing.under).name == "bbq:smoker_active" then
		     minetest.sound_play("bbq_grill_brush",
				{pos=pointed_thing.under, max_hear_distance = 10,})
			end
		end
	end
end

})
