local meta = {}
local ss = {}

function ss.new(s)  -- function ss.new(s) is same as ss["new"] = function(s)
    local superString = {}
    superString.s = s
    setmetatable(superString, meta)
    return superString
end
function ss.add(s1, s2)
    return s1.s .. s2.s
end

meta.__add = ss.add

meta.__index = function(table, key)
    if key == "reverse" then
        return string.reverse(table.s)
    end
end

firstname = ss.new("Bill")
lastName = ss.new("Gates")
print(firstname + lastName)
print(firstname.reverse)