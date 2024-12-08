-- Creating a table (Lua's version of arrays/dictionaries)

local myTable = {1, 2, 3, key = "value"}

-- Accesing table values
print(myTable[1]) --Access by index (Lua is not zero indexed)
print(myTable["key"]) --Access by key

-- Iterating through a table
for k, v in pairs(myTable) do
    print(k, v)
end