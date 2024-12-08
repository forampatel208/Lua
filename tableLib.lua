--[[
--Initialising a empty table
stack = {}

-- Add the value 32 to the end of the table
table.insert(stack, 32) -- Now, stack = {32}

print(table.unpack(stack)) -- unpack converts the contents of the table into a list of values
-- Output: 32

table.insert(stack, 15) -- Now, stack = {32, 15}
print(table.unpack(stack))
-- Output: 32 15

v = table.remove(stack) -- Removes the last element
print(v) 
-- Output: 15

table.insert(stack, 13)
table.insert(stack, 12)
print(table.unpack(stack))
--]]

--[[]
queue = {}
table.insert(queue, 1, "Joe")
table.insert(queue, 1, "Bob")
table.insert(queue, 1, "Mary")
print(table.unpack(queue))
table.remove(queue)
print(table.unpack(queue))
table.remove(queue)
print(table.unpack(queue))
--]]

list = { 4, 3, 2, 44, 45, 5, 7, 84, 54, 9 }
table.sort(list)
print(table.unpack(list))