getgenv().Key = "Enter your key here!"

repeat wait() until game:IsLoaded()

local script_version = "4.32"
local hub_name = "SeaHub"

----------------------------------
local playername = game.Players.LocalPlayer.Name
local plr = game.Players.LocalPlayer
----------------------------------

--UI STUFF--------------------------------
local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
local win = DiscordLib:Window("Anime Souls Simulator! 👻 | UPDATE 10! | ~Odins")
local serv = win:Server("Main Scripts!", "http://www.roblox.com/asset/?id=6031075938")

local easter = serv:Channel("🐣 Easter!")
local zones = serv:Channel("⚡ Zones!")

local cred = win:Server("Credits!", "http://www.roblox.com/asset/?id=6031075938")
local Credits = cred:Channel("Credits")
--UI STUFF--------------------------------

--GETGENVS--------------------------------
getgenv().StrengthZone = false
getgenv().DurabilityZone = false
--GETGENVS--------------------------------

if getgenv().Key == "" or getgenv().Key == "Enter your key here!" then
    getgenv().Key = "NONE"
end

game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = " \n["..hub_name.."]: Your key:", Color = Color3.fromRGB(43,147,240), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
task.wait(.5)
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = getgenv().Key, Color = Color3.fromRGB(43,240,46), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = " \n["..hub_name.."]: Loading scripts.. (This can take a while)", Color = Color3.fromRGB(43,147,240), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )

-- // Easter
function doeaster()
    while getgenv().Easter and wait(1) do
        if game.Players[plr.Name].PlayerGui.UI.Easter.During.Visible then
            for i,v in pairs(game.Workspace.Eggs:GetChildren()) do
                if v.Name == "Egg" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position) * CFrame.new(0, 7, 0)
                    wait(.2)
                end
            end
        end
    end
end
easter:Seperator()
easter:Button("Get all eggs!", function()
    DiscordLib:Notification("🔔 NOFICICATION!", "Teleporting to all eggs, This should take a while!", "OKAY!")
    for i,v in pairs(game.Workspace.Eggs:GetChildren()) do
        if v.Name == "Egg" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position) * CFrame.new(0, 7, 0)
            wait(.2)
        end
    end
end)
-- // Zones
function tp10k()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12.118434, 16.2699089, -370.21698, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
function tp100k()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(864.697021, 4.99574852, -299.726776, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
function tp5M()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-475.536224, -13.0575495, -512.488953, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
function tp250M()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-888.668762, -11.1772728, -442.120178, 0.709770858, 0, 0.704432666, 0, 1, 0, -0.704432666, 0, 0.709770858)
end
function tp4B()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-491.925018, -36.1906967, -111.425468, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
function tp160B()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-851.909241, -4.7403264, 88.8314362, 0.964518249, -0, -0.264016151, 0, 1, -0, 0.264016151, 0, 0.964518249)
end
function tp5T()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(676.147278, 171.139282, -720.567261, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
function tp200T()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(544.440674, 162.020218, -745.866455, 0.873322606, -0, -0.487142354, 0, 1, -0, 0.487142354, 0, 0.873322606)
end
function tp4qd()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1709.27734, 27.1113625, -594.788513, 0.0200414062, 0, 0.999799132, 0, 1, 0, -0.999799132, 0, 0.0200414062)
end
function tp1Qn()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1952.51477, -4.76335239, -756.109497, 0.00743299723, 0, 0.999972343, 0, 1, 0, -0.999972343, 0, 0.00743299723)
end
function tp22Qn()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-586.308167, -19.3009129, 799.058044, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
end
function tp400Qn()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1220.55493, -19.3009129, -458.221466, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
end

function doStrengthZone()
    while getgenv().StrengthZone and wait(10) do
local str_value = game.Players[plr.Name].displayStats.Strength.Value
if str_value > 400000000000000000000 then
    tp400Qn()
elseif str_value > 22000000000000000000 then
    tp22Qn()
elseif str_value > 1000000000000000000 then
    tp1Qn()
elseif str_value > 4000000000000000 then
    tp4qd()
elseif str_value > 200000000000 then
    tp200T()
elseif str_value > 5000000000000 then
    tp5T()
elseif str_value > 160000000000 then
    tp160B()
elseif str_value > 4000000000 then
    tp4B()
elseif str_value > 250000000 then
    tp250M()
elseif str_value > 5000000 then
    tp5M()
elseif str_value > 100000 then
    tp100k()
elseif str_value > 10000 then
    tp10k()
end
    end
end
zones:Label("This only works with strength atm!")
zones:Seperator()
zones:Toggle("💪 Best Strength Zone!",false, function(bool)
    getgenv().StrengthZone = bool
    doStrengthZone()
end)
zones:Seperator()

-- // CREDTS
Credits:Seperator()
Credits:Label("@Queen0dinY (synthetics#3130) - Coding!")
Credits:Seperator()
Credits:Label("Thank you for testing:")
Credits:Label("@GoodTimesWithNoah_YT")
Credits:Label("@Seakui")
Credits:Seperator()

Credits:Button("Join the Discord Server!", function()
    DiscordLib:Notification("Notification", "Coming Soon!", "Okay")
end)

-- end of loading uwuowo
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "All scripts for "..game.PlaceId.." have been loaded!", Color = Color3.fromRGB(43,240,46), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "\nWelcome, ".. playername.. ".", Color = Color3.fromRGB(217,240,43), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "Currently running v".. script_version.." ", Color = Color3.fromRGB(217,240,43), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
