
-- for performance, cache the lights for each locationName
local propLightLocationCache = {}

function GetPropLightsForLocation(locationName)

    if locationName == nil or locationName == "" or not Client.lightPropList then
        return {}
    end

    if propLightLocationCache[locationName] then
        return propLightLocationCache[locationName]
    end

    local lightList = {}

    local locations = GetLocationEntitiesNamed(locationName)

    if table.icount(locations) > 0 then

        for _, location in ipairs(locations) do

            for _, propLight in ipairs(Client.lightPropList) do

                if propLight then

                    local lightOrigin = propLight:GetCoords().origin

                    if location:GetIsPointInside(lightOrigin) then

                        table.insert(lightList, propLight)

                    end

                end

            end

        end

    end

    -- Log("Total prop lights %s, lights in %s = %s", #Client.lightPropList, locationName, #lightList)
    propLightLocationCache[locationName] = lightList

    return lightList

end


local function HandleImpactDecal(position, doer, surface, target, showtracer, altMode, damage, direction, decalParams)

    -- when we hit a target project some blood on the geometry behind
    --DebugLine(position, position + direction * kBloodDistance, 3, 1, 0, 0, 1)
    if direction then

        local trace =  Shared.TraceRay(position, position + direction * kBloodDistance, CollisionRep.Damage, PhysicsMask.Bullets)
        if trace.fraction ~= 1 then

            decalParams[kEffectHostCoords] = Coords.GetTranslation(trace.endPoint)
            decalParams[kEffectHostCoords].yAxis = trace.normal
            decalParams[kEffectHostCoords].zAxis = direction
            decalParams[kEffectHostCoords].xAxis = decalParams[kEffectHostCoords].yAxis:CrossProduct(decalParams[kEffectHostCoords].zAxis)
            decalParams[kEffectHostCoords].zAxis = decalParams[kEffectHostCoords].xAxis:CrossProduct(decalParams[kEffectHostCoords].yAxis)

            decalParams[kEffectHostCoords].zAxis:Normalize()
            decalParams[kEffectHostCoords].xAxis:Normalize()

            --DrawCoords(decalParams[kEffectHostCoords])

            if not target then
                decalParams[kEffectSurface] = trace.surface
            end

            GetEffectManager():TriggerEffects("damage_decal", decalParams)

        end

    end

end

local directionlessSurfaces = {
    "organic",
    "flesh",
    "glass"
}

function HandleHitEffect(position, doer, surface, target, showtracer, altMode, damage, direction)

    local tableParams = { }
    tableParams[kEffectHostCoords] = Coords.GetTranslation(position)
    
    if not table.icontains(directionlessSurfaces, surface) then 
        -- this sets the ricochet cinematic to (roughly) the surface normal
        local trace =  Shared.TraceRay(position, position + direction, CollisionRep.Damage, PhysicsMask.Bullets)
        if trace.fraction ~= 1 then

            tableParams[kEffectHostCoords] = Coords.GetTranslation(trace.endPoint)
            tableParams[kEffectHostCoords].yAxis = (trace.normal:GetUnit() + direction:GetUnit()*0.8):GetUnit()
            tableParams[kEffectHostCoords].zAxis = direction
            tableParams[kEffectHostCoords].xAxis = tableParams[kEffectHostCoords].yAxis:CrossProduct(tableParams[kEffectHostCoords].zAxis)
            tableParams[kEffectHostCoords].zAxis = tableParams[kEffectHostCoords].xAxis:CrossProduct(tableParams[kEffectHostCoords].yAxis)

            tableParams[kEffectHostCoords].yAxis:Normalize()
            tableParams[kEffectHostCoords].zAxis:Normalize()
            tableParams[kEffectHostCoords].xAxis:Normalize()
        end
    end
    
    if doer then
        tableParams[kEffectFilterDoerName] = doer:GetClassName()
    end
    tableParams[kEffectSurface] = surface
    tableParams[kEffectFilterInAltMode] = altMode

    if target then

        tableParams[kEffectFilterClassName] = target:GetClassName()

        if target.GetTeamType then

            tableParams[kEffectFilterIsMarine] = target:GetTeamType() == kMarineTeamType
            tableParams[kEffectFilterIsAlien] = target:GetTeamType() == kAlienTeamType

        end

    else

        tableParams[kEffectFilterIsMarine] = false
        tableParams[kEffectFilterIsAlien] = false

    end

    -- Don't play the hit cinematic, those are made for third person.
    if target ~= Client.GetLocalPlayer() then
        GetEffectManager():TriggerEffects("damage", tableParams)
    end

    -- Always play sound effect.
    GetEffectManager():TriggerEffects("damage_sound", tableParams)

    if showtracer == true and doer then

        local tracerStart = (doer.GetBarrelPoint and doer:GetBarrelPoint()) or (doer.GetEyePos and doer:GetEyePos()) or doer:GetOrigin()

        local tracerVelocity = GetNormalizedVector(position - tracerStart) * kTracerSpeed
        CreateTracer(tracerStart, position, tracerVelocity, doer)

    end

    if damage > 0 and target and target.OnTakeDamageClient then
        target:OnTakeDamageClient(damage, doer, position)
    end


    HandleImpactDecal(position, doer, surface, target, showtracer, altMode, damage, direction, tableParams)

end


