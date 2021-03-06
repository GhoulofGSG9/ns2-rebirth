---
title: Nin's NS2:Rebirth
---
Welcome to Rebirth, an overhaul of NS2. Please send feedback using the button on the bottom of this window.

## Changes for Dec 20

* Increased whip supply cost to 15 from 5
* Teams now get 100 supply for each tech point they have built on
* Aliens now deal full damage to other aliens (skulks still have some damage resistances)

## Summary
* Each commander may choose their teams race (Marine or Alien)
* All friendly structures, players, and equipment have a blue outline. Enemies have no outlines.
* All marine to marine damage is increased by 33%
* Power nodes are neutral, and can only be damaged if your team isn't using it.
* Unused rooms will start with powernodes destroyed
* Aliens have a new playable class: Prowler
* Marines have new shield tech and healing fields
* Teams now get 100 supply for each tech point they have built on

## Alien-specific changes
* Skulks take an extra 30% less melee damage from aliens. (At biomass 1, it takes 1 parasite and 2 bites to kill a skulk. At biomass 2, it takes 2 parasites and 2 bites.)
* Onos deals double damage to Onos
* Onos smash enemy eggs under their feet
* Onos melee attacks are AOE, and hit all enemies in their melee "cone"
* Onos melee attack is now 100 damage (was 90)
* You can't climb on enemy hives anymore.
* Aliens can press Reload (default R) to go third-person
* Infestation is only partially shared. While buildings can be nourished from enemy infestation, alien commanders cannot build or echo structures to enemy infestation.
* Alien vision needed to be re-written so that players can differenciate between friend and foe. Your enemies are always orange, and your team is always blue.
* Lerk bite damage decreased to 50 (was 60). Poison damage has been doubled (12/s up from 6/s)
* New alien class: Prowler. 
* * More effective HP than the skulk but less than the lerk, and moves roughly the same but cannot climb on walls
* * Repeatedly jumping (or bunny-hopping) forward can let the player gain high speed
* * Aiming up and holding forward allows for higher jumps
* * Takes over all drifter abilities for free, on a short cooldown simply by right-clicking
* * Primary fire is very low damage (maximum 45 normal) but has range
* Fades have been reworked to be the Wraith Fade
* * Blink has been replaced with Teleport: Hold right-click to preview where you will go, then let go to teleport there nearly instantly
* * Metabolize is now Backtrack: Press Shift to teleport to where you were 4 seconds ago after a short delay. Has a 12 second cooldown.
* * Advanced Metabolize is now Shadow Dance: You will automatically regenerate health when you are not visible to your enemies.
* * Stab is now Acid Rocket: A 55 structural damage projectile with a small AOE. Requires biomass 6 (not 7, like stab)
* Whips now have knockback.
* Increased whip supply cost to 15 from 5
* Gorge Hydras have been reworked. They now autobuild, cost 1 res, have very little health, but attack very quickly.
* Gorge Webs now prevent lerks from gliding or flapping for 4 seconds. If this happens to you, it will be the longest 4 seconds of your life.
* Skulks will spawn with their previous upgrades
* Skulks have a faster ground move speed but slower acceleration. Their top speed while wall jumping is the same.
* Alien players respawn 2 seconds faster, but gestate in their egg for +2 seconds.
* Adrenaline now provides double the energy pool but does not increase the rate you 
* Silence is back, replacing Crush
* Focus now provides +50% damage


## Marine-specific changes
* Marine backwards walk speed increased
* Exosuits takes 33% less damage from all sources, and an additional 45% less damage from bullets
* Railguns now have a smaller projectile (making it harder to hit players)
* Railgun charge time is decreased to 1.5 seconds (was 2.0 seconds). 
* Pulse grenades slow exosuits
* Cluster grenades do 40% extra damage
* Shotguns have a much smaller spread, but their bullets also drop in damage very quickly.
* Nanoshield reduces all damage by 50% (up from 32%)
* Axe damage increased and range increased slightly
* ARCs cannot target or damage ARCs, MACs, or power nodes (maps are not designed properly for ARCing power nodes)
* Nerve gas grenades damage armor, just like against aliens. (It's kind of more like an acid grenade)
* Bullets have a slight damage falloff starting at 6 metres (20 feet)
* Flamethrowers cannot ignite marine buildings, but they can ignite marines! Afterburn damage increased slightly. 
* Grenade Launcher blast radius reduced by 25% from 4.8 meters to 3.6 meters
* Marine jetpack fuel use no longer depends on your inventory weight. Instead, jetpack acceleration is scaled to your inventory weight
* The fire rate of the Pistol is now set at a fixed rate, and no longer requires pressing the fire button for each bullet.
* Marines with rifles drop rifle ammo on death
* Marines can see all friendly structures, players, and equipment through walls with a blue outline. Enemies have no outlines.
* Minigun exo now has a target tracker that works for all classes, not just skulks, and doesn't fade out.
* Scans and building blueprints are coloured orange if they are the enemy's.
* Scanned players are tracked with a circle that stays on and doesn't flicker (NS2+ cheat has been disabled)
* Marines can always see power node status. This can reveal your enemy's starting location (or race)
* Sentries no longer require a sentry battery, but now require power. Batteries can no longer be constructed. Max of 2 sentries per room.
* Significant bot intelligence improvements
* Robotics Factory cost reduced to 5 (from 10). ARC Factory increased to 10 (from 5).
* Pistol now auto-fires but has a slightly slower max firing speed.
* Pulse grenades now explode on impact of anything
* All grenades will no longer detonate on impact after bouncing
* Grenade launcher rebalanced: Lower damage, faster reload, no detonation delay. It is now affected by weapon upgrades.

## Extra Mods
### Healing field
* Medpacks are replaced by healing fields
* Costs 2 res, lasts for 15 seconds, and can heal up to 300 HP per marine
* Healing fields cannot overlap. If the commander places them too close, the older one will be destroyed.

### New armory GUI and shield tech
* Shield generator boosts armor utility, giving +10 armor and auto-welding after a 10 second delay. Costs 10 res and 45 seconds to research.
* It also better protects against GL, Miniguns, and Railgun, giving 25% reduction to damage from those sources as long as you have armor.
* Shield generator can be upgraded to provide +20 armor per level (max +60), and can have the regeneration delay reduced to 5 and then 3 seconds at max level

### Exosuit boombox 
* Press 1-3 on your keyboard
* can be heard clear across the map

### Hades Device
* Blueprint placed by commander
* Costs 5 res, can only be armed by a marine (not a MAC)
* Detonates after 25 seconds, and does massive damage to all units in a radius (including allies)
* Only damages things within line of sight!

### Creepier Atmosphere mod
* Rooms start dark, but flashlights are boosted
* Many other tweaks to visuals, including lens flares, textures, and decals

### Persistent Minimap Buildings
* If you spot an enemy building, it will stay on your minimap until it is destroyed

### Machine Gun Rebalance
* Machine guns now reloads twice as fast, but firing it lowers your move speed by 50%.
* Machine gun is now more accurate when firing on the ground, but far less accurate in the air.

### Crouch Fix
* Players can no longer crouch to clip into ceilings and vents.

### Weapon Switch Improvements
* Look at weapons on the ground and press Use (default E) to pick it up. Pressing G still drops your weapon.




