

loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
if shared.GuiLibrary then
    shared.GuiLibrary["SelfDestruct"]()
end

wait(0.5)

loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()

wait(0.5)

repeat task.wait() until game:IsLoaded()
repeat task.wait() until shared.GuiLibrary
local uis = game:GetService("UserInputService")
local GuiLibrary = shared.GuiLibrary
local ScriptSettings = {}
local UIS = game:GetService("UserInputService")
local SMX = function(tab, argstable)
	return GuiLibrary["ObjectsThatCanBeSaved"][tab.."Window"]["Api"].CreateOptionsButton(argstable)
end
function securefunc(func)
	task.spawn(function()
		spawn(function()
			pcall(function()
				loadstring(
					func()
				)()
			end)
		end)
	end)
end
function warnnotify(title, content, duration)
	local frame = GuiLibrary["CreateNotification"](title or "SanWareClientX Warning", content or "(No Content Given)", duration or 5, "assets/WarningNotification.png")
	frame.Frame.Frame.ImageColor3 = Color3.fromRGB(0, 27, 255)
end
function infonotify(title, content, duration)
	local frame = GuiLibrary["CreateNotification"](title or "SanWareClientX Info", content or "(No Content Given)", duration or 5, "assets/InfoNotification.png")
	frame.Frame.Frame.ImageColor3 = Color3.fromRGB(0, 27, 255)
end
function getstate()
	local ClientStoreHandler = require(game.Players.LocalPlayer.PlayerScripts.TS.ui.store).ClientStore
	return ClientStoreHandler:getState().Game.matchState
end
function iscustommatch()
	local ClientStoreHandler = require(game.Players.LocalPlayer.PlayerScripts.TS.ui.store).ClientStore
	return ClientStoreHandler:getState().Game.customMatch
end
function checklagback()
	local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	return isnetworkowner(hrp)
end


infonotify("SanWareClientX", "Loaded sucessfully!", 4)
task.wait(1)
-- infonotify("Injecting whitelist..")

local whitelisted = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Sail100/H/main/whitelisted.json"))

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
            smxnotify("SmokeX Team " .. player.Name .. " is a" .. whitelisted.NameTag .. whitelisted.Emoji .. " (" .. whitelisted.Name2Tag .. " ) user", 10)
        end
    end
end

game.Players.PlayerAdded:Connect(function(player)
    for i,v in pairs(whitelisted) do
        if player.Name == whitelisted[i] and whitelisted[i] ~= lplrname then
            smxnotify("SmokeX Team " .. player.Name .. " is a" .. whitelisted.NameTag .. whitelisted.Emoji .. " (" .. whitelisted.Name2Tag .. " ) user", 10)
        end
    end
end)

GuiLibrary.RemoveObject("XrayOptionsButton")
GuiLibrary.RemoveObject("SwimOptionsButton")
GuiLibrary.RemoveObject("ScaffoldOptionsButton")
