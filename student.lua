local grade = {Mary = "100", Teacher = "100"}
while true do 
    print("Enter student name (q to quit)")
    local name = io.read()

    if name == "q" then
        break
    end

    print("Enter student score")
    local score = io.read("*n", "*l")

    grade[name] = score
end

for k, v in pairs(grade) do
    print "Printing Grade:"
    print(k, v)
end