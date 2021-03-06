
ModLoader.SetupFileHook( "lua/Globals.lua", "lua/FadeBlink/Globals.lua", "post" )

ModLoader.SetupFileHook( "lua/Shared.lua", "lua/FadeBlink/Shared.lua", "post" )
ModLoader.SetupFileHook( "lua/Fade.lua", "lua/FadeBlink/Fade.lua", "post" )
ModLoader.SetupFileHook( "lua/Fade_Server.lua", "lua/FadeBlink/Fade_Server.lua", "post" )
ModLoader.SetupFileHook( "lua/Balance.lua", "lua/FadeBlink/Balance.lua", "post" )
ModLoader.SetupFileHook( "lua/BalanceHealth.lua", "lua/FadeBlink/BalanceHealth.lua", "post" )
ModLoader.SetupFileHook( "lua/Weapons/Alien/Blink.lua", "lua/FadeBlink/Blink.lua", "post" )
ModLoader.SetupFileHook( "lua/Weapons/Alien/Metabolize.lua", "lua/FadeBlink/Metabolize.lua", "post" )
ModLoader.SetupFileHook( "lua/Weapons/Alien/SwipeBlink.lua", "lua/FadeBlink/SwipeBlink.lua", "post" )
ModLoader.SetupFileHook( "lua/Weapons/Alien/StabBlink.lua", "lua/FadeBlink/StabBlink.lua", "post" )

ModLoader.SetupFileHook( "lua/GUIAlienBuyMenu.lua", "lua/FadeBlink/GUIAlienBuyMenu.lua", "post" )
ModLoader.SetupFileHook( "lua/GUIAlienHUD.lua", "lua/FadeBlink/GUIAlienHUD.lua", "post" )
ModLoader.SetupFileHook( "lua/AlienBuy_Client.lua", "lua/FadeBlink/AlienBuy_Client.lua", "post" )
ModLoader.SetupFileHook( "lua/Alien.lua", "lua/FadeBlink/Alien.lua", "post" )
ModLoader.SetupFileHook( "lua/AlienTeam.lua", "lua/FadeBlink/AlienTeam.lua", "post" )
ModLoader.SetupFileHook( "lua/Alien_Client.lua", "lua/FadeBlink/Alien_Client.lua", "post" )
ModLoader.SetupFileHook( "lua/TechData.lua", "lua/FadeBlink/TechData.lua", "post" )
ModLoader.SetupFileHook( "lua/TechTreeConstants.lua", "lua/FadeBlink/TechTreeConstants.lua", "post" )
ModLoader.SetupFileHook( "lua/NS2ConsoleCommands_Server.lua", "lua/FadeBlink/NS2ConsoleCommands_Server.lua", "post" )
ModLoader.SetupFileHook( "lua/MapBlipMixin.lua", "lua/FadeBlink/MapBlipMixin.lua", "post" )
ModLoader.SetupFileHook( "lua/NS2Utility.lua", "lua/FadeBlink/NS2Utility.lua", "post" )
ModLoader.SetupFileHook( "lua/Scoreboard.lua", "lua/FadeBlink/Scoreboard.lua", "post" )


--ModLoader.SetupFileHook( "lua/Hud/HelpScreen/HelpScreenContent.lua", "lua/FadeBlink/HelpScreenContent.lua", "post" )

if Client then
    local stringMapping = {
        ['HELP_SCREEN_METABOLIZE'] = 'Backtrack',
        ['HELP_SCREEN_METABOLIZE_DESCRIPTION'] = 'Teleport back to where you were 4 seconds ago. Try to remember where that was!',
        ['HELP_SCREEN_METABOLIZE_ADV'] = 'Shadow Dance',
        ['HELP_SCREEN_METABOLIZE_ADV_DESCRIPTION'] = 'Passively regenerate health and energy as long as you are unseen. An eye shows up on your HUD if you are being seen by the enemy.',
        ['HELP_SCREEN_BLINK'] = 'Blink',
        ['HELP_SCREEN_BLINK_DESCRIPTION'] = 'Teleport a short distance in front of you. Hold the button down to see where you will appear.'
    }
        

    local oldResolveString = Locale.ResolveString
    Locale.ResolveString = function(str)
        if stringMapping[str] then
            return stringMapping[str]
        end
        return oldResolveString(str)
    end
end