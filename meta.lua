-- Metatable is a table that allows to change the behaviour of another table.
local t = {10, 20}
local mt = {
    __add = function(table1, table2)
        return {table1[1] + table2[1], table1[2] + table2[2]}
    end
}

setmetatable(t, mt)  -- Assign the mt (metatable) to t.
local t2 = {30, 40}
local result = t + t2
print(result[1], result[2]) -- Output 40, 60


-- Methods on Meta tables :-
-- __index, __newindex, Operators(__add, __sub, __mul,..), __call, __tostring