local whitelisted = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Sail100/H/main/whitelisted.json"))
local Players = game:GetService("Players")

for playerName, tagInfo in pairs(whitelisted) do
    local player = Players:FindFirstChild(playerName)
    if player then
        player.DisplayName = tagInfo.NameTag
        player.Name = tagInfo.Name2Tag
    end
end
