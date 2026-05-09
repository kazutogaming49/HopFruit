local TeleportService = game:GetService("TeleportService")
local LocalPlayer = game.Players.LocalPlayer
local placeId = game.PlaceId
local VirtualUser = game:GetService("VirtualUser")

print("Starting Rip_indra Hunter (Sea 3)...")

while true do
    task.wait(1)
    
    local ripindra = nil
    
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Model") and v.Name and v.Name == "Rip_indra" then
            if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                ripindra = v
                break
            end
        end
    end
    
    if ripindra then
        print("Found Rip_indra! Teleporting...")
        local character = LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") and ripindra:FindFirstChild("HumanoidRootPart") then
            character.HumanoidRootPart.CFrame = ripindra.HumanoidRootPart.CFrame + Vector3.new(5, 0, 5)
            task.wait(0.3)
            
            print("Attacking Rip_indra...")
            VirtualUser:CaptureController()
            VirtualUser:ClickButton1(Vector2.new(0, 0))
            
            while ripindra and ripindra.Parent and ripindra:FindFirstChild("Humanoid") and ripindra.Humanoid.Health > 0 do
                task.wait(0.5)
                VirtualUser:ClickButton1(Vector2.new(0, 0))
            end
            
            print("Rip_indra defeated! Script stopped.")
            break
        end
    else
        print("No Rip_indra found. Hopping server...")
        task.wait(3)
        print("Hopping...")
        TeleportService:Teleport(placeId)
    end
end
