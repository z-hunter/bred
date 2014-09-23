JSON = (loadfile "JSON.lua")() -- one-time load of the routines


local all = "all";
local friendly = "friendly";

function Zeal()
	local ret = {
		method = "multiply_counter",
		params = {
			attack="$count_active_unit(side=enemy)",
		},
		type_name="Zeal",
		triggers = {},
		aura_filters="self",
	};
	return ret;
end;






gain = { Zeal(all, friendly)}  


local pretty_json_text = JSON:encode_pretty(gain);


print (pretty_json_text);

local file = io.open("test.json", "w")	-- mode: "w" = write mode (all file text is erased)
file:write(pretty_json_text)
file:flush()
file:close()


--[[
-- local simple={
--	method = "tkc",
--	name = "Take control",
--	description = "Take control under unit",
-- }
--
--
--]]

