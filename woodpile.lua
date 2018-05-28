-- Minetest 0.4 mod: bbq
-- See README.txt for licensing and other information.

local bbq_woodpile_formspec =
	"size[8,7;]" ..
	default.gui_bg ..
	default.gui_bg_img ..
	default.gui_slots ..
	"list[context;bbq;0,0.3;8,2;]" ..
	"list[current_player;main;0,2.85;8,1;]" ..
	"list[current_player;main;0,4.08;8,3;8]" ..
	"listring[context;bbq]" ..
	"listring[current_player;main]" ..
	default.get_hotbar_bg(0, 2.85)

local function get_bbq_woodpile_formspec(inv)
	local formspec = bbq_woodpile_formspec
	local invlist = inv and inv:get_list("bbq")
	-- Inventory slots overlay
	local vx, vy = 0, 0.3
	for i = 1, 16 do
		if i == 9 then
			vx = 0
			vy = vy + 1
		end
		if not invlist or invlist[i]:is_empty() then
			formspec = formspec ..
				"image[" .. vx .. "," .. vy .. ";1,1;bbq_woodpile_slot.png]"
		end
		vx = vx + 1
	end
	return formspec
end

local woodtype = {
	{"woodpile", "", "wood"},
	{"woodpile_acacia", "Acacia", "acacia_wood"},
	{"woodpile_pine", "Pine", "pine_wood"},
	{"woodpile_junglewood", "Junglewood", "junglewood"},
	{"woodpile_aspen", "Aspen", "aspen_wood"}
}

--[[
Die png's von "Wood" umbennen. Gegebenenfalls aliase einrichten
]]
for i,v in ipairs(woodtype) do
	mod = "bbq"
	nodename = mod..":"..i[1]
	tile = mod.."_"..i[1]
	desc = i[2].." Woodpile"
	craftitem = "default:"..i[3]
	
	minetest.register_node(nodename, {
		description = desc,
		tiles = {tile.."_top.png", tile.."_top.png", tile.."_side.png",
			tile.."_side.png", tile.."_front.png", tile.."_front.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults(),
			
		on_construct = function(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", get_bbq_woodpile_formspec(nil))
			local inv = meta:get_inventory()
			inv:set_size("bbq", 8 * 2)
		end,
		can_dig = function(pos,player)
			local inv = minetest.get_meta(pos):get_inventory()
			return inv:is_empty("bbq")
		end,
		on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
			minetest.log("action", player:get_player_name()..
				" moves stuff in BBQ wood pile at ".. minetest.pos_to_string(pos))
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", get_bbq_woodpile_formspec(meta:get_inventory()))
		end,
		on_metadata_inventory_put = function(pos, listname, index, stack, player)
			minetest.log("action", player:get_player_name() ..
				   " moves stuff to bbq woodpile at ".. minetest.pos_to_string(pos))
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", get_bbq_woodpile_formspec(meta:get_inventory()))
		end,
		on_metadata_inventory_take = function(pos, listname, index, stack, player)
			minetest.log("action", player:get_player_name() ..
				   " takes stuff from bbq woodpile at ".. minetest.pos_to_string(pos))
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec", get_bbq_woodpile_formspec(meta:get_inventory()))
		end,
		on_blast = function(pos)
			local drops = {}
			default.get_inventory_drops(pos, "bbq", drops)
			drops[#drops + 1] = "bbq:woodpile"
			minetest.remove_node(pos)
			return drops
		end,						
	})
	
	minetest.register_craft({
		output = nodename,
		recipe = {
			{craftitem, craftitem, craftitem},
			{craftitem, craftitem, craftitem},
			{craftitem, craftitem, craftitem},
		}
	})
end
