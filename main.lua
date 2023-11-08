-- Function to create a random password
function GeneratePassword(length)
    -- Create a string with all the characters
    local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local password = ""
    
    -- Loop to create the password
    for i = 1, length do
        local charIndex = math.random(1, #chars)
        password = password .. string.sub(chars, charIndex, charIndex)
    end

    return password
end

-- Call the function
if #arg ~= 1 then
    print("Usage: lua main.lua <length>")
else
    local length = tonumber(arg[1])
    if length == nil then
        print("Invalid length")
    else
        print(GeneratePassword(length))
    end
end