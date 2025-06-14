
--[[
    NazeeHub - Blox Fruits Script Hub by Toni (Jaksel)
    Features:
    - Auto Farm Level / Boss / Mastery
    - Teleport, Shop, Fruit Sniper, Sea Event, and more!
--]]

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("NazeeHub", "Ocean")

-- Main Tab
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Auto Farm")
MainSection:NewToggle("Auto Farm Level", "Auto Leveling", function(v) _G.autoFarm = v end)
MainSection:NewToggle("Farm Mastery (Sword)", "Auto mastery sword", function(v) _G.farmSword = v end)
MainSection:NewToggle("Farm Mastery (Fruit)", "Auto mastery fruit", function(v) _G.farmFruit = v end)

local BossSection = Main:NewSection("Farm Boss")
BossSection:NewDropdown("Pilih Boss", "Pilih boss untuk dikalahkan", {"Saber", "Flame", "Ice Admiral"}, function(b) _G.selectedBoss = b end)
BossSection:NewButton("Kill All Boss", "Membunuh semua boss", function() print("Killing All Boss") end)
BossSection:NewToggle("Auto Kill Selected Boss", "Kill boss yang dipilih", function(v) _G.autoKillBoss = v end)
MainSection:NewButton("Farm Factory", "Auto masuk factory", function() print("Factory started") end)

-- Misc Tab
local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Misc Features")
MiscSection:NewToggle("Bring Mob (Auto ON)", "Tarik musuh", function() _G.bringMob = v end)
MiscSection:NewToggle("Auto Haki", "Aktifkan haki otomatis", function() _G.haki = v end)
MiscSection:NewButton("Redeem All Codes", "Ambil semua code", function() print("Codes redeemed") end)

-- Quest Tab (otomatis disesuaikan dengan Sea)
-- Get Item Tab (Get Sword, Accessories, Material)
-- Raid Tab (Auto Island, Raid Law)
-- Fruit Tab (Sniper, ESP, Tween)
-- Shop Tab (Buy Fighting Style, Haki)
-- Race Tab (Upgrade, Ganti Race)
-- V4 Tab (Langkah V4 Lengkap)
-- Sea Event Tab (Auto Terror Shark)
-- Teleport Tab (Sea, Island, NPC)

-- Watermark
local logo = Drawing.new("Text")
logo.Text = "ByToni"
logo.Color = Color3.new(1, 1, 1)
logo.Size = 18
logo.Position = Vector2.new(10, 10)
logo.Outline = true

-- Auto function logic di bawah (placeholder)
-- ...

-- End of Script
