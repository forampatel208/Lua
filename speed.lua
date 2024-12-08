-- Define a class called "Car"
Car = {}          -- Create a table to repesent the class
Car.__index = Car -- Set up metatables for inheritance

-- Contructo for the Car class
function Car:new()
    local instance = setmetatable({}, Car) --Create a new object and set its metatable
    instance.speed = 0                     -- Initialise the speed property
    return instance
end

-- Define a method to increase speed of car
function Car:increaseSpeed()
    self.speed = self.speed + 10
end

-- Create an instance of the "car" class
myCar = Car:new()

-- Call the "increaseSpeed" method on th car
myCar:increaseSpeed()

print(myCar.speed) --Output: 10 