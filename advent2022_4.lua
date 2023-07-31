function totab(str) 
	local tab = {}
	local i = 1
	for num in str:gmatch("%d+") do
		tab[i] = tonumber(num)
		i = i + 1
	end
	return tab
end


function selfcontains(tab)
	if tab[1] <= tab[3] and tab[2] >= tab[4] then return true end
	if tab[3] <= tab[1] and tab[4] >= tab[2] then return true end
	return false
end

function overlaps(tab)
	if tab[3]<=tab[1] and tab[1]<=tab[4] then return true end
	if tab[1]<=tab[3] and tab[3]<=tab[2] then return true end
	return false
end

local countself = 0 
local countover = 0

for line in io.lines("advent2022_4_input.txt") do
	local tab = totab(line)
	if selfcontains(tab) then countself = countself + 1 end
	if overlaps(tab) then countover = countover + 1 end
end

print(countself)
print(countover)

