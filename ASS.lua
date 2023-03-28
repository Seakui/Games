-- im a really bad scripter so yeah i apologise for my coding
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
local cred = win:Server("Credits!", "http://www.roblox.com/asset/?id=6031075938")

local idk = serv:Channel("🐣 Fast Hatch!")
local info = serv:Channel("✨ Information!")
local utility = serv:Channel("🔧 Utility")

local Credits = cred:Channel("Credits")
--UI STUFF--------------------------------

--GETGENVS--------------------------------
local userKey = getgenv().Key
getgenv().AutoOpen = false
--GETGENVS--------------------------------

if getgenv().Key == "" or getgenv().Key == "Enter your key here!" then
    getgenv().Key = "NONE"
end

game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = " \n["..hub_name.."]: Your key:", Color = Color3.fromRGB(43,147,240), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
task.wait(.5)
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = getgenv().Key, Color = Color3.fromRGB(43,240,46), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = " \n["..hub_name.."]: Loading scripts.. (This can take a while)", Color = Color3.fromRGB(43,147,240), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )


-- // fast hatch?
idk:Label("This hatches faster than usual!")
idk:Seperator()

function doAutoOpen() while getgenv().AutoOpen do game:service'VirtualInputManager':SendKeyEvent(true, "E", false, game) wait() end end
idk:Toggle("👊 Auto Open! (AutoPress E)",false, function(bool)
    getgenv().AutoOpen = bool
    doAutoOpen()
end)

idk:Seperator()

-- // Utility
utility:Button("Fix raid not damaging bug!", function()
    DiscordLib:Notification("🔔 NOFICICATION!", "Successfully fixed raid boss!", "OKAY!")
    for i,v in pairs(game.Workspace._RAID_BOSSES:GetDescendants()) do
        if v.Name == "time_remaining" then
            if v.bg._counter.Text == "00:00:00" then
                v.Parent.Parent.Parent:Destroy()
            end
        end
    end
end)
-- // INFO
info:Seperator()
info:Button("Class, Sword & Aura requirements!", function()
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = " \n[CLASS]: Your next class costs", Color = Color3.fromRGB(255, 221, 0), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.CenterUI.Class.Main.Mid["can_upgrade"].price.price.Text.." souls", Color = Color3.fromRGB(145, 126, 0), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "[SWORD]: Your next sword costs", Color = Color3.fromRGB(0, 110, 255), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.CenterUI.Swords.Main.Mid["can_upgrade"].price.price.Text.." souls", Color = Color3.fromRGB(3, 67, 150), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "[AURA]: Your next aura costs", Color = Color3.fromRGB(255, 0, 140), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.CenterUI.Auras.Main.Mid["can_upgrade"]["price_souls"].price.Text.." souls and "..game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.CenterUI.Auras.Main.Mid["can_upgrade"]["price_rune"].price.Text.." pink runes", Color = Color3.fromRGB(168, 3, 94), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
end)
info:Seperator()

-- // CREDTS
Credits:Seperator()
Credits:Label("@Queen0dinY - Coding!")
Credits:Seperator()
Credits:Label("Thank you for testing:")
Credits:Label("@GoodTimesWithNoah_YT")
Credits:Label("@Paul7889")
Credits:Seperator()

Credits:Button("Join the Discord Server!", function()
    DiscordLib:Notification("Notification", "Coming Soon!", "Okay")
end)

-- end of loading uwuowo
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "All scripts for "..game.PlaceId.." have been loaded!", Color = Color3.fromRGB(43,240,46), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "\nWelcome, ".. playername.. ".", Color = Color3.fromRGB(217,240,43), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "Currently running v".. script_version.." ", Color = Color3.fromRGB(217,240,43), Font = Enum.Font.FredokaOne, FontSize = Enum.FontSize.Size24 } )
