ModLoader.SetupFileHook( "lua/Weapons/Alien/StabBlink.lua", "lua/FadeAcidRocket/StabBlink.lua", "post" )
ModLoader.SetupFileHook( "lua/Fade.lua", "lua/FadeAcidRocket/Fade.lua", "post" )
ModLoader.SetupFileHook( "lua/Balance.lua", "lua/FadeAcidRocket/Balance.lua", "post" )
ModLoader.SetupFileHook( "lua/AlienWeaponEffects.lua", "lua/FadeAcidRocket/AlienWeaponEffects.lua", "post" )
ModLoader.SetupFileHook( "lua/Weapons/Marine/Flamethrower.lua", "lua/FadeAcidRocket/Flamethrower.lua", "post" )


if Client then
    local stringMapping = {
        ["STAB_BLINK"] = 'Acid Rocket',
        ["HELP_SCREEN_STAB"] = 'Acid Rocket',
        ['STAB_TOOLTIP'] = 'Fires a medium-damage projectile after a short delay. Has a small AOE.',
        ['HELP_SCREEN_STAB_DESCRIPTION'] = 'Fires a medium-damage projectile after a short delay. Has a small AOE.',
    }
        

    local oldResolveString = Locale.ResolveString
    Locale.ResolveString = function(str)
        if stringMapping[str] then
            return stringMapping[str]
        end
        return oldResolveString(str)
    end
end