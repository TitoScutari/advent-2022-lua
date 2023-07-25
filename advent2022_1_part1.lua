local max = 0
local current = 0

for line in io.lines("advent2022_1_input.txt") do
	if tonumber(line) then 
		current = current + tonumber(line)
		if current > max then
			max = current
		end
	else
		current = 0
	end
end

print(max)
