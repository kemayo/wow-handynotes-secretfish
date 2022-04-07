local myname, ns = ...

ns.hiddenConfig = {
    groupsHidden = true,
}

ns.defaultsOverride = {
    show_on_minimap = true,
}

-- Secret Fish of Mechagon

local goggles = {
    achievement=13489,
    atlas="worldquest-icon-fishing",
    loot={167698}, -- Secret Fish Goggles
}
ns.RegisterPoints(946, { -- World
    [53004750] = goggles,
})
ns.RegisterPoints(947, { -- Azeroth
    [68004660] = goggles,
})
ns.RegisterPoints(876, { -- Kul Tiras
    [16903000] = goggles,
})
if not IsAddOnLoaded("HandyNotes_BattleForAzerothTreasures") then
    ns.RegisterPoints(1462, { -- Mechagon
        [35004650] = { -- Bolted Steelhead, Energized Lighting Cod, Solarsprocket Barbel
            criteria={44738, 44744, 44745},
            loot={{167655,quest=55305},{167661,quest=55311},{167662,quest=55312}},
            note="These can be fished anywhere on the coast",
        },
        [76704920] = {criteria=44737,loot={{167654,quest=55299}}}, -- Bottom Feeding Stinkfish
        [55803190] = {criteria=44739,loot={{167656,quest=55306}}}, -- Pond Hopping Springfish
        [59102280] = {criteria=44740,loot={{167657,quest=55307}}}, -- Shadowy Cave Eel
        [26107570] = {criteria=44741,loot={{167658,quest=55308}}}, -- Mechanical Blowfish
        [83707300] = {criteria=44742,loot={{167659,quest=55309}}}, -- Spitting Clownfish
        [65505220] = {criteria=44743,loot={{167660,quest=55310}}}, -- Sludge-fouled Carp
        [47403600] = {criteria=44746,loot={{167663,quest=55313}}}, -- Tasty Steelfin
    }, {
        achievement=13489,
        atlas="worldquest-icon-fishing",
        minimap=true,
    })
end

