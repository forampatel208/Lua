local co = coroutine.create(function()
    for i = 1, 3 do 
        print("Coroutine iteration: ", i)
        coroutine.yield()
    end
end)

