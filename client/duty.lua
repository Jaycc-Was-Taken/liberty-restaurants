local QBCore = exports['qb-core']:GetCoreObject()
local PlayerJobs = {}
local onDuty = false
local currentZone = nil
local restaurantZones = {}
RegisterNetEvent('LRP:client:UpdateJobs', function(jobs)
	PlayerJobs = jobs
end)
RegisterNetEvent('liberty-restaurants:client:toggleDuty', function(data)
    local check = true
    local jobTable = {
        'mechanic',
        'ambulance',
        'police',
        'taxi'
    }
    for k,v in pairs(jobTable) do
        local isOnDuty = exports['qb-'..v..'job']:clientOnDuty()
        if isOnDuty then
            check = false
        end
    end
    local jobCheck = false
    for k,v in pairs(PlayerJobs) do
        if v.job == currentZone then
            jobCheck = true
        end
    end
    if onDuty then
        onDuty = false
        QBCore.Functions.Notify("Clocked off.", "primary")
        TriggerServerEvent('liberty-restaurants:server:RemoveFromDutyList', data.job)
    elseif check and not onDuty and jobCheck then
        onDuty = true
        QBCore.Functions.Notify("Clocked on.", "success")
        TriggerServerEvent('liberty-restaurants:server:AddToDutyList', currentZone)
    end
    if check == false then
        QBCore.Functions.Notify("You're clocked in somewhere else.", "error")
    end
end)
for k,v in pairs(Config.RestaurantZones) do
    restaurantZones[k] = CircleZone:Create(vector2(v.x, v.y), 60, {
        name = k..'-zone',
        debugPoly = false,
    })
    restaurantZones[k]:onPlayerInOut(function(isPointInside)
        if isPointInside then
            currentZone = k
            --print(currentZone)
        else
            if onDuty then
                onDuty = false
                QBCore.Functions.Notify("Went too far away, clocked off.", "error")
                TriggerServerEvent('liberty-restaurants:server:RemoveFromDutyList', k)
            end
            currentZone = nil
            --print(currentZone)
        end
    end)
end
