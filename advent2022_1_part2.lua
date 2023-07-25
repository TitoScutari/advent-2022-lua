local max = {0,0,0}

function sort_last(arr, i)
	if arr[i] > arr[i-1] then
		tmp = arr[i-1]
		arr[i-1] = arr[i]
		arr[i] = tmp
		if i>2 then 
			sort_last(arr, i-1)
		end
	end
end

local current = 0
for line in io.lines("advent2022_1_input.txt") do
	if tonumber(line) then
		current = current + tonumber(line)
	else
		if current > max[3] then
			max[3] = current
			sort_last(max, #max)
		end
		current = 0
	end
end

print(max[1]+max[2]+max[3])
