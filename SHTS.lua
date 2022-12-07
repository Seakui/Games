-- yes i did not obfuscate this because its nothing lol

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Super Human Training Simulator", "Midnight")



local AutoFarm = Window:NewTab("AutoFarm")

local aAutoFarm = AutoFarm:NewSection("AutoTrain")

getgenv().AutoTrain = false;
function doCheckAutoTrain()
    while getgenv().AutoTrain and wait() do
local args = {[1] = "strength"}
game:GetService("ReplicatedStorage").remotes.train:FireServer(unpack(args))
local args = {[1] = "endurance"}
game:GetService("ReplicatedStorage").remotes.train:FireServer(unpack(args))
local args = {[1] = "psychic"}
game:GetService("ReplicatedStorage").remotes.train:FireServer(unpack(args))
local args = {[1] = "agility"}
game:GetService("ReplicatedStorage").remotes.train:FireServer(unpack(args))
    end
end
aAutoFarm:NewToggle("Start AutoTraining", "Train everything at once!", function(bool)
    getgenv().AutoTrain = bool
    if bool then
        doCheckAutoTrain()
    end
end)

local Zones = Window:NewTab("Zones")

local zZones = Zones:NewSection("AutoTeleport")
