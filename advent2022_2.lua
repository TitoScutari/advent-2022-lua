-- rock A X, paper B Y, scissor C Z

game = {}
game["A X"] = 3
game["A Y"] = 6
game["A Z"] = 0
game["B X"] = 0
game["B Y"] = 3
game["B Z"] = 6
game["C X"] = 6
game["C Y"] = 0
game["C Z"] = 3

shape = {}
shape["X"] = 1
shape["Y"] = 2
shape["Z"] = 3

local count = 0
for line in io.lines("advent2022_2_input.txt") do
	count = count + game[line]
	count = count + shape[string.sub(line, string.len(line))]
end

print(count)

-- part 2

game["A X"] = 3
game["A Y"] = 4
game["A Z"] = 8
game["B X"] = 1
game["B Y"] = 5
game["B Z"] = 9
game["C X"] = 2
game["C Y"] = 6
game["C Z"] = 7

count = 0
for line in io.lines("advent2022_2_input.txt") do
	count = count+game[line]
end

print(count)
