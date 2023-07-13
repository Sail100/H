local whitelisted = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Sail100/H/main/whitelisted.json"))
    "))

local GuiLibrary = shared.GuiLibrary
local lplrname = game.Players.LocalPlayer.Name
local function smxnotify(title, text, delay)
    pcall(function()
        local frame = GuiLibrary["CreateNotification"](title, text, delay, "assets/WarningNotification.png")
        frame.Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
        frame.Frame.Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
    end)
end

for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
    for i,v in pairs(whitelisted) do
        if player.Name == whitelisted[i] and whitelisted[i] ~= lplrname then
            infonotify("Whitelisted User " .. player.Name .. " is a" .. whitelisted.NameTag .. whitelisted.Emoji .. " (" .. whitelisted.Name2Tag .. " ) user", 10)
        end
    end
end

game.Players.PlayerAdded:Connect(function(player)
    for i,v in pairs(whitelisted) do
        if player.Name == whitelisted[i] and whitelisted[i] ~= lplrname then
            infonotify("Whitelisted User " .. player.Name .. " is a" .. whitelisted.NameTag .. whitelisted.Emoji .. " (" .. whitelisted.Name2Tag .. " ) user", 10)
        end
    end
end)
