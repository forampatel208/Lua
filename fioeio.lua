--[[ 
local file = io.open("test.txt", "w")
file:write("Jay Swaminarayan\n")
file:write("Kem Chho? Sau saara vana ne!\)
file:close()
--]]
local file = io.open("test.txt", "r")
for line in file:lines() do
    print(line)
end
                        -- *a = reads whole file
                        -- *I = reads next line
                        -- *n = reads a number
                        -- *x = reads x characters

print(text)