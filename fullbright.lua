-- FULL BRIGHT com toggle F4 (compatível com XENO)

local Lighting = game:GetService("Lighting")

local fullbrightOn = false

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
    Lighting.OutdoorAmbient = Color3.new(0, 0, 0)
end

-- Keybind do Xeno que funciona
Xeno.bind("F4", function()
    fullbrightOn = not fullbrightOn
    if fullbrightOn then
        EnableFullBright()
        Xeno.notify("FullBright", "Ligado!")
    else
        DisableFullBright()
        Xeno.notify("FullBright", "Desligado!")
    end
end)
