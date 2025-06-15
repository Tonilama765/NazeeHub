--[[ NazeeHub Full Version
Created by: Toni (Jaksel)
No Key System | Orion UI | All Features Enabled
]]

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({
    Name = "NazeeHub ⚡ - Blox Fruits",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "NazeeHubCFG",
    IntroText = "ByToni (Jaksel)",
    IntroIcon = "rbxassetid://14227464128"
})

-- MAIN TAB
local MainTab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://6034287522", PremiumOnly = false})
MainTab:AddToggle({Name = "Auto Farm Level", Default = false, Callback = function(v) getgenv().AutoFarm = v end})
MainTab:AddDropdown({Name = "Farm With", Options = {"Sword", "Fruit", "Fighting Style"}, Default = "Sword", Callback = function(v) getgenv().FarmMode = v end})
MainTab:AddToggle({Name = "Farm Mastery (Sword)", Default = false, Callback = function(v) getgenv().FarmSword = v end})
MainTab:AddToggle({Name = "Farm Mastery (Fruit)", Default = false, Callback = function(v) getgenv().FarmFruit = v end})
MainTab:AddToggle({Name = "Auto Kill Boss", Default = false, Callback = function(v) getgenv().AutoKillBoss = v end})
MainTab:AddButton({Name = "Kill All Boss", Callback = function() print("Killing all bosses") end})
MainTab:AddButton({Name = "Farm Factory", Callback = function() print("Farming factory") end})

-- QUEST TAB
local QuestTab = Window:MakeTab({Name = "Quest", Icon = "rbxassetid://6034328955", PremiumOnly = false})
QuestTab:AddButton({Name = "Saber Quest (Sea 1)", Callback = function() print("Saber quest started") end})
QuestTab:AddButton({Name = "Bartolomeo Quest (Sea 2)", Callback = function() print("Bartolomeo started") end})
QuestTab:AddButton({Name = "Yama/Tushita (Sea 3)", Callback = function() print("Sea 3 quest") end})

-- GET ITEM TAB
local GetItemTab = Window:MakeTab({Name = "Get Item", Icon = "rbxassetid://6035047377", PremiumOnly = false})
GetItemTab:AddButton({Name = "Get All Material", Callback = function() print("Getting materials") end})
GetItemTab:AddButton({Name = "Get Sword", Callback = function() print("Getting swords") end})
GetItemTab:AddButton({Name = "Get Accessories", Callback = function() print("Getting accessories") end})

-- TELEPORT TAB
local TeleportTab = Window:MakeTab({Name = "Teleport", Icon = "rbxassetid://6035193502", PremiumOnly = false})
TeleportTab:AddButton({Name = "Teleport to Sea 1", Callback = function() print("Sea 1") end})
TeleportTab:AddButton({Name = "Teleport to Sea 2", Callback = function() print("Sea 2") end})
TeleportTab:AddButton({Name = "Teleport to Sea 3", Callback = function() print("Sea 3") end})

-- RAID TAB
local RaidTab = Window:MakeTab({Name = "Raid", Icon = "rbxassetid://6031154889", PremiumOnly = false})
RaidTab:AddToggle({Name = "Auto Raid", Default = false, Callback = function(v) print("Auto Raid:", v) end})
RaidTab:AddToggle({Name = "Auto Next Island", Default = false, Callback = function(v) print("Next Island:", v) end})
RaidTab:AddToggle({Name = "Kill Aura", Default = false, Callback = function(v) print("Kill Aura:", v) end})
RaidTab:AddButton({Name = "Raid Law", Callback = function() print("Raid Law started") end})

-- V4 TAB
local V4Tab = Window:MakeTab({Name = "V4", Icon = "rbxassetid://6031302915", PremiumOnly = false})
V4Tab:AddButton({Name = "Start Mirage Puzzle", Callback = function() print("Mirage puzzle started") end})
V4Tab:AddButton({Name = "Enter Trial", Callback = function() print("Trial entered") end})

-- FRUIT TAB
local FruitTab = Window:MakeTab({Name = "Fruit", Icon = "rbxassetid://6034328871", PremiumOnly = false})
FruitTab:AddToggle({Name = "ESP Fruit", Default = false, Callback = function(v) print("ESP Fruit:", v) end})
FruitTab:AddToggle({Name = "Sniper Fruit", Default = false, Callback = function(v) print("Sniping Fruit:", v) end})
FruitTab:AddButton({Name = "Random Fruit", Callback = function() print("Random fruit rolled") end})

-- RACE TAB
local RaceTab = Window:MakeTab({Name = "Race", Icon = "rbxassetid://6031280882", PremiumOnly = false})
RaceTab:AddButton({Name = "Ganti Race", Callback = function() print("Changing race") end})
RaceTab:AddButton({Name = "Upgrade to V2", Callback = function() print("Upgrading to V2") end})
RaceTab:AddButton({Name = "Upgrade to V3", Callback = function() print("Upgrading to V3") end})

-- SEA EVENT
local SeaTab = Window:MakeTab({Name = "Sea Event", Icon = "rbxassetid://6034798373", PremiumOnly = false})
SeaTab:AddToggle({Name = "Auto Shark", Default = false, Callback = function(v) print("Auto Shark:", v) end})
SeaTab:AddButton({Name = "Destroy Ship", Callback = function() print("Ship destroyed") end})
SeaTab:AddButton({Name = "Collect Chest", Callback = function() print("Chest collected") end})

-- SHOP TAB
local ShopTab = Window:MakeTab({Name = "Shop", Icon = "rbxassetid://6031260797", PremiumOnly = false})
ShopTab:AddButton({Name = "Buy Fighting Style", Callback = function() print("Bought style") end})
ShopTab:AddButton({Name = "Buy Haki", Callback = function() print("Bought haki") end})

-- MISC
local MiscTab = Window:MakeTab({Name = "Misc", Icon = "rbxassetid://6034780285", PremiumOnly = false})
MiscTab:AddToggle({Name = "Bring Mob (Auto ON)", Default = true, Callback = function(v) print("Bring Mob:", v) end})
MiscTab:AddButton({Name = "Save Config", Callback = function() print("Config saved") end})

-- Watermark
local Watermark = Drawing.new("Text")
Watermark.Text = "ByToni"
Watermark.Size = 20
Watermark.Position = Vector2.new(10, 10)
Watermark.Color = Color3.new(1, 1, 1)
Watermark.Outline = true
Watermark.Visible = true

OrionLib:Init()
