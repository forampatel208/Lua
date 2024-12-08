function calculation(x, y, operator) 
    if operator == "+" then
        return x + y
    elseif operator == "-" then
        return x - y
    elseif operator == "*" then
            return x * y
    elseif operator == "/" then
        if y == 0 then
            return "Can't be devided by zero"
        else
            return x / y
        end
        return "Invalid Operator"
    end
end

print(calculation(5, 2 ,"*"))
print(calculation(5, 2, "-"))
print(calculation(5, 2, "+"))
print(calculation(5, 2, "/"))