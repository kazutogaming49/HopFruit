local TeleportService = game:GetService("TeleportService")
local LocalPlayer = game.Players.LocalPlayer
local placeId = game.PlaceId
local VirtualUser = game:GetService("VirtualUser")

local rareFruits = {
    "Kitsune", "Dragon", "Leopard", "Yeti", "Gas",
    "Dough", "Buddha", "Spirit", "Venom", "Control", "Shadow", "Blizzard", "Mammoth", "T-Rex", "Sound"
}

print("Starting Fruit Sniper (Legendary/Mythical only)...")

while true do
    task.wait(1)
    
    local foundFruit = nil
    local foundName = nil
    
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Tool") and v:FindFirstChild("Handle") then
            for _, fruitName in pairs(rareFruits) do
                if string.find(v.Name, fruitName) then
                    foundFruit = v
                    foundName = fruitName
                    break
                end
            end
        end
        if foundFruit then break end
    end
    
    if foundFruit then
        print("Found " .. foundName .. "! Teleporting...")
        local character = LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character.HumanoidRootPart.CFrame = foundFruit.Handle.CFrame
            task.wait(0.3)
            
            print("Picking up fruit...")
            VirtualUser:CaptureController()
            VirtualUser:ClickButton1(Vector2.new(0, 0))
            task.wait(0.5)
            
            print("Collected " .. foundName .. "! Script stopped.")
            break
        end
    else
        print("No legendary/mythical fruit. Hoping server...")
        task.wait(3)
        print("Hopping...")
        TeleportService:Teleport(placeId)
    end
end
