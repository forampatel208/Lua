-- Here (...) is called varargs i.e. Variable arguments
function findMax(...)
    local arguments = {...} -- Converts(...) into a table called arguments
    local max = arguments[1] -- Assume the first argument to be the max initially

    for i = 1, #arguments do -- Loop through all arguments
        if arguments[i] > max then 
            max = arguments[i] --Update max is a larger value is found
        end
    end

    return max
end

-- Call the function with  multiple arguments
answer = findMax(1, 2, 3, 5, 7, 4, 9, 66, 42)
print(answer) --66 output