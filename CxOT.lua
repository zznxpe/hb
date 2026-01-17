local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Cx OT",
    LoadingTitle = "Cx OT",
    LoadingSubtitle = "by G9cx",
    ConfigurationSaving = {
        Enabled = true,
        FileName = "FiaS"
    },
    ToggleUIKeybind = Enum.KeyCode.F8,
    KeySystem = false
})

local Tab = Window:CreateTab("Combat Tester", nil)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local enabled = false
local sizeValue = 6
local transparencyValue = 0.4
local seeHitbox = false

local animSpeedEnabled = false
local animSpeedMultiplier = 2
local isAnimating = false

-- Custom locomotion IDs from your game (excluded from speed-up)
local locomotionIds = {
    "17819453109",
    "17792701666",
    "17791965866",
    "17791968544",
    "127576302225448",
    "17843420785",
    "18149335682",
    "93440471136854",
    "17837722603",
    "18362264385",
    "17843420785",
    "18377436533",
    "18377445949",
    "17855214456",
    "17855239745",
    "17819453109"
}

local function setAllPartsNonCollidable(character)
    for _, part in pairs(character:GetChildren()) do
        if part:IsA("BasePart") then
            part.CanCollide = false
            part.CanTouch = true
            part.CanQuery = true
        end
    end
end

-- (rest of script unchanged)
