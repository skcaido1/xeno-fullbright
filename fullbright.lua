-- FULL BRIGHT + TOGGLE (Xeno)

local Lighting = game:GetService("Lighting")

local fullbright = false

local function EnableFullBright()
    Lighting.Brightness = 2
    Lighting.ClockTime = 14
    Lighting.FogEnd = 1e10
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

Xeno.bind("F4", function()
    fullbright = not fullbright
    if fullbright then
        EnableFullBright()
        Xeno.notify("FullBright", "Ligado!")
    else
        DisableFullBright()
        Xeno.notify("FullBright", "Desligado!")
    end
end)
