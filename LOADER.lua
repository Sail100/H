local SanWareClientXOwner = "Roblox"

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
infonotify("Injecting whitelist..")
if SanWareClientXOwner == SanWareClientXOwner then
	task.wait(1)
	infonotify("TEST", "Test", 2)
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/Sail100/H/main/checkwhitelisted.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Sail100/H/main/whitelisted.lua", true))()

GuiLibrary.RemoveObject("XrayOptionsButton")
GuiLibrary.RemoveObject("SwimOptionsButton")
GuiLibrary.RemoveObject("ScaffoldOptionsButton")
