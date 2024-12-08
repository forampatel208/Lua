local health = require "calory"
local healthMonitor = health.healthMonitor

healthMonitor:add(1500) --Add 500 Calories
healthMonitor:step(5001) -- Add 500 steps

local result = healthMonitor:didReachGoal()
print("Both goals reached? " .. tostring(result))