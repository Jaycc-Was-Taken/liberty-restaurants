local QBCore = exports['qb-core']:GetCoreObject()

for k,v in pairs(Shops.Locations) do
    exports['qb-target']:AddBoxZone('shop'..v.name, v.coords, v.length, v.width, {
        name = v.name,
        heading = v.heading,
        debugPoly = v.debugPoly,
        minZ = v.minZ,
        maxZ = v.maxZ
    }, {
        options = {
            {
                label = v.label,
                icon = v.icon,
                job = v.job,
                type = "client",
                event = "liberty-restaurants:client:openShop",
                location = v.location,
            },
        },
        distance = 3.0
    })
end
RegisterNetEvent('liberty-restaurants:client:openShop', function(data)
    local location = tostring(data.location)
    local shopItems = Shops.Shops[location]
    TriggerServerEvent("inventory:server:OpenInventory", "shop", location, shopItems)
end)