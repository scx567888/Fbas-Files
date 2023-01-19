local addrss=0x0010165C
local flag={}
local hp={}
local x={}
local y={}
for i=0,100 do
	flag[i]=addrss+0xB0*i
	hp[i]=addrss+0xB0*i+22
	x[i]=addrss+0xB0*i+4
	y[i]=addrss+0xB0*i+8
end
	
while true do
	for i=0,100 do
		if (memory.readshort(flag[i])==16 and memory.readshort(hp[i])<=21000 and memory.readshort(hp[i])>0 and memory.readshort(x[i])>=0 and memory.readshort(x[i])<360) then
		
			dx = memory.readshort(x[i])
			dy = 480-memory.readshort(y[i])
			
			if dx > 304 then dx = 304 end
			if dx < 21 then dx = 21 end
			if dy > 224 and dy <= 256 then dy = 224 end
			if dy < 10 then dy = 10 end
			
			gui.box(dx-21, dy-9, dx, dy,"clear", "green")
			gui.text(dx-19,dy-8,"" .. memory.readshort(hp[i]),"red",0x000000A0)
			--gui.text(dx-19,dy+1,"" ..hp[i])
		end
	end

	emu.frameadvance()
end