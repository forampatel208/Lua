-- Define caloricounter class
caloricounter = { count = 0, goal = 1000 }

-- Method to add calories
function caloricounter:add(amount)
    self.count = self.count + amount
end

-- Check if the goal is reached
function caloricounter:didReachGoal()
    return self.count >= self.goal
end

-- Constructor for new caloricounter object
function caloricounter:new(t)
    t = t or {}
    setmetatable(t, self)
    self.__index = self
    return t
end

local healthMonitor = caloricounter:new{ steps = 0, stepGoal = 10000 }

function healthMonitor:step(amount)
    self.steps = self.steps + amount
end

function healthMonitor:didReachGoal()
    local goalsReached = 0

    -- Check calory goal
    if self.count >= self.goal then
        print("calory goal of " .. self.count .. " reached")
        goalsReached = goalsReached + 1
    else
        print("Calory gole not reached yet")
    end

    -- Step goal checking
    if self.steps >= self.stepGoal then
        print("step goal of " .. self.stepGoal .. " reached")
        goalsReached = goalsReached + 1
    else
        print("step gole not reached yet")
    end

    return goalsReached >= 2
end

-- healthMonitor:add(500) --Add 500 Calories
-- healthMonitor:step(5000) -- Add 500 steps

-- local result = healthMonitor:didReachGoal()
-- print("Both goals reached? " .. tostring(result))

return {
    caloricounter = caloricounter,
    healthMonitor = healthMonitor
}