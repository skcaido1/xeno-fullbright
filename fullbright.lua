-- FullBright para Xeno
local Lighting = game:GetService("Lighting")

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F4 then
        Lighting.Ambient = Color3.new(1,1,1)
        Lighting.OutdoorAmbient = Color3.new(1,1,1)
        Lighting.Brightness = 5
        Lighting.FogEnd = 1e9
    end
end)
