
kExoBulletModifier = 0.5

kMarineRailgunModifier = 0.85

kMedpackHeal = 0 -- was 25, now you regen slowly instead of "suddenly health!"
kMarineRegenerationHeal = 50 --"Amount of hp per second" was the comment???, was 25. This is actually how much you heal as "regen"

kTeamVsTeamDamage = {}
kTeamVsTeamDamage[kMarineTeamType] = {}
kTeamVsTeamDamage[kMarineTeamType][kMarineTeamType]  = 1.33
--kTeamVsTeamDamage[kMarineTeamType][kNeutralTeamType] = 1.33
    
kTeamVsTeamDamage[kAlienTeamType] = {}
kTeamVsTeamDamage[kAlienTeamType][kAlienTeamType] = 0.85

-- this is the exo speed modifier when you get hit by a shock grenade
kElectrifiedSpeedScalar = 0.5
kExoElectrifiedMult = 1.5