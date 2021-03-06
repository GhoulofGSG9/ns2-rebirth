

local oldBuildTechData = BuildTechData
function BuildTechData()
    local techDataTable = oldBuildTechData()
    table.insert(techDataTable, 
        { [kTechDataId] = kTechId.HadesDevice,
        [kTechDataBuildRequiresMethod] = GetRoomIsValidForHadesDevice,
        [kTechDataBuildMethodFailedMessage] = "Only one Hades Device allowed per room, and not near a friendly command station.",
        [kTechDataHint] = "Explodes after a short delay",
        [kTechDataGhostModelClass] = "MarineGhostModel",
        [kTechDataMapName] = HadesDevice.kMapName,
        [kTechDataDisplayName] = "Hades Device",
        [kTechDataCostKey] = kHadesDeviceCost,
        [kTechDataPointValue] = kHadesDevicePointValue,
        [kTechDataModel] = HadesDevice.kModelName,
        [kTechDataEngagementDistance] = 2,
        [kTechDataBuildTime] = kHadesDeviceBuildTime,
        [kTechDataMaxHealth] = kHadesDeviceHealth,
        [kTechDataMaxArmor] = kHadesDeviceArmor,
        [kTechDataTooltipInfo] = string.format("Requires activation by a marine. This device counts down for %s seconds and then explodes, dealing massive damage to everything nearby.", kHadesDeviceDetonateTime),
        [kTechDataHotkey] = Move.E,
        [kTechDataAlertText] = "Hades Device taking damage",
        [kTechDataNotOnInfestation] = kPreventMarineStructuresOnInfestation,
        [kVisualRange] = HadesDevice.kRange,
        [kTechDataObstacleRadius] = 0.55,
        [kTechDataOverrideCoordsMethod] = AdjustHadesDevice,
        [kTechDataCooldown] = 3
        }
    )
    return techDataTable
end