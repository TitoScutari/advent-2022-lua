function splitmatch(str)
	local arr = {}
	for i=1,str:len()/2 do
		arr[str:sub(i,i)] = true
	end
	for i=1+str:len()/2,str:len() do
		if arr[str:sub(i,i)] then
			return str:sub(i,i)
		end
	end
	return nil
end

function commonitem(str1, str2, str3)
	local arr = {}
	for i=1, str1:len() do
		arr[str1:sub(i,i)] = 1
	end
	for i=1, str2:len() do
		if arr[str2:sub(i,i)] == 1 then	arr[str2:sub(i,i)] = 2 end
	end
	for i=1, str3:len() do
		if arr[str3:sub(i,i)] == 2 then return str3:sub(i,i) end
	end
	return nil
end

function priorityvalue(ch)
	if ch:match("%u") then
		return ch:byte() - 38
	else
		return ch:byte() - 96
	end

end
local current = 0
for line in io.lines("advent2022_3_input.txt") do
	local ch = splitmatch(line)
	if ch:match("%u") then
		current = current + ch:byte() - 38
	else
		current = current + ch:byte() - 96
	end
end

print(current)

local lines = io.lines("advent2022_3_input.txt")

current = 0
i = 0

local linestab = {}
for line in lines do
	linestab[#linestab+1] = line
end

while true do
	str1 = linestab[i+1]
	str2 = linestab[i+2]
	str3 = linestab[i+3]
	i = i+3

	if str1 == nil then break end
	current = current+priorityvalue(commonitem(str1,str2,str3))
end

print(current)

