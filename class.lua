-- Define a class
local MyClass = {}

-- Constructor function
function MyClass:new(value)
    local obj = {}             -- Create a new object (table)
    setmetatable(obj, self)    -- Set the metatable of the object to the class
    self.__index = self        -- Redirect missing methods to the class table
    obj.value = value or 0     -- Initialize object properties
    return obj
end

-- A method for the class
function MyClass:getValue()
    return self.value          -- Access the object's value
end

-- Create an object
local obj1 = MyClass:new(42)
print(obj1:getValue())         --Output: 42