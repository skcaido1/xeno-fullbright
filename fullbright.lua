-- CONFIGURAÇÃO
getgenv().FullBrightKey = Enum.KeyCode.F4

-- FULL BRIGHT BASE
local Lighting = game:GetService("Lighting")

local function EnableFullBright()
    Lighting.Brightness = 2
    Lighting.ClockTime = 14
    Lighting.FogEnd = 100000
    Lighting.GlobalShadows = false
    Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
end

local function DisableFullBright()
    Lighting.Brightness = 1
    Lighting.ClockTime = 12
    Lighting.FogEnd = 1000
    Lighting.GlobalShadows = true
    Lighting.OutdoorAmbient = Color3.new(0,0,0)
end

local fullbrightOn = false
EnableFullBright()

-- KEYBIND 100% COMPATÍVEL COM XENO
game:GetService("UserInputService").InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == getgenv().FullBrightKey then
        fullbrightOn = not fullbrightOn
        if fullbrightOn then
            EnableFullBright()
            print("FULLBRIGHT ATIVADO")
        else
            DisableFullBright()
            print("FULLBRIGHT DESATIVADO")
        end
    end
end)
