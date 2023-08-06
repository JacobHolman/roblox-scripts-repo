local players = game:GetService("Players"):GetPlayers();
local lp = game:GetService("Players")["LocalPlayer"];
local value = 360;
local camera = game:GetService("Workspace").CurrentCamera;

while true do
    for _, player in ipairs(players) do
        if player ~= lp then
            local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            local lhrp = lp["Character"].HumanoidRootPart
            lp.Character.HumanoidRootPart.CFrame = hrp.CFrame + Vector3.new(0, 5, 0)
            for angle = 0, value, 1 do
                lhrp.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(0, math.rad(angle), 0)
                wait(0.01)
             end
            wait(2)
        end
    end
end
