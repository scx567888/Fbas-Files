--[[
FBA-rr and MAME-rr input display script
written by Dammit
last update 11/5/2010

User: Do not edit this file.
This script depends on input-modules.lua.
]]

if not (mame or fba) then error("This script is only intended for FBA-rr and MAME-rr.", 0) end
if not emu.registerstart then error("This script requires a newer version of FBA-rr.", 0) end

col,inp,module = {},{}
local module_file = "LuaScripts/input-modules.lua"
if not io.open(module_file, "r") then
	print("Warning: unable to open '" .. module_file .. "'")
	col = { --default colors:
		on1  = 0xffff00ff, --pressed: yellow inside
		on2  = 0x000000ff, --pressed: black border
		off1 = 0x00000000, --unpressed: clear inside
		off2 = 0x00000040, --unpressed: mostly clear black border
	}
else
	dofile(module_file, "r")
end

local function generic() --try to detect controls and make a generic module
	local c,width,height = joypad.get(),emu.screenwidth(),emu.screenheight()
	local stick,nbuttons,nplayers,label = 0,0,1
	if c["P1 Up"] ~= nil and c["P1 Down"] ~= nil and c["P1 Left"] ~= nil and c["P1 Right"] ~= nil then
		stick = 1
	end
	for b = 10,1,-1 do
		for _,v in ipairs({"P1 Button " .. b, "P1 Fire " .. b}) do
			if c[v] ~= nil then
				nbuttons = b
				label = v:gsub("[(P1)(%d+)]", "")
				break
			end
		end
		if nbuttons > 0 then
			break
		end
	end
	for n = 4,1,-1 do
		if c["P"..n.." Button 1"] ~= nil or c["P"..n.." Fire 1"] ~= nil then
			nplayers = n
			break
		end
	end
	if stick+nbuttons == 0 then return end --found neither stick nor buttons
	
	print("Generic input display: "..nplayers.."-player, "..nbuttons.."-button"..(stick > 0 and "" or ", no joystick"))
	module = {}
	if stick > 0 then
		for n = 1,nplayers do
			module[n .. "^"] = {(n-1)/n*width + 0x10, height - 0x10, "P" .. n .. " Up"}
			module[n .. "v"] = {(n-1)/n*width + 0x10, height - 0x08, "P" .. n .. " Down"}
			module[n .. "<"] = {(n-1)/n*width + 0x08, height - 0x0c, "P" .. n .. " Left"}
			module[n .. ">"] = {(n-1)/n*width + 0x18, height - 0x0c, "P" .. n .. " Right"}
		end
	end
	for n = 1,nplayers do
		for b = 1,nbuttons do
			module[n .. b] = {(n-1)/n*width + stick*0x18 + 0x8 + math.floor((b-1)%(nbuttons/2))*0x8,
				height - 0x10 + math.floor((b-1)*2/nbuttons)*0x08, "P" .. n .. label .. b}
		end
	end
	for n = 1,nplayers do
		for _,v in ipairs({n..(n==1 and " Player" or " Players").." Start", "P"..n.." Start", "Start "..n}) do
			if c[v] ~= nil then
				module[n .. "S"] = {(n-1)/n*width, height - 0x10, v}
				break
			end
		end
		for _,v in ipairs({"Coin "..n, "P"..n.." Coin"}) do
			if c[v] ~= nil then
				module[n .. "C"] = {(n-1)/n*width, height - 0x08, v}
				break
			end
		end
	end
end

local function pickmodule()
	module = nil
	for _,v in pairs(inp) do
		for _,romname in ipairs(v[1]) do
			if emu.romname() == romname or emu.parentname() == romname or emu.sourcename() == romname then
				module = v[2]
				for _,keyname in pairs(module) do
					keyname[3] = mame and keyname[4] or keyname[3]
				end
				return
			end
		end
	end
	generic()
end

if not macrolua then --don't override macrolua's own registerstart function
	emu.registerstart(function()
		pickmodule()
	end)
else
	pickmodule()
end

function displayfunc(showinput)
	if not showinput then
		return
	end
	for k,v in pairs(module) do
		local color1,color2 = col.on1,col.on2
		if v[5] and v[6] then --analog control
			gui.text(v[1]+v[5], v[2]+v[6], tostring(joypad.get()[v[3]]), color1, color2) --display analog value
		elseif joypad.get()[v[3]] == false then --digital control, unpressed
			color1,color2 = col.off1,col.off2
		end --(otherwise digital control, pressed)
		gui.text(v[1], v[2], string.sub(k, 2), color1, color2)
	end
end

showinput = true

gui.register(function()
	displayfunc(showinput)
end)

print("* Press Lua hotkey 5 to toggle input display.")
input.registerhotkey(5, function()
	showinput = not showinput
	if not showinput then
		gui.clearuncommitted()
	end
end)
