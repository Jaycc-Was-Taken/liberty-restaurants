local QBCore = exports['qb-core']:GetCoreObject()      
-- ███████ ████████  ██████  ██████
-- ██         ██    ██    ██ ██   ██
-- ███████    ██    ██    ██ ██████
--      ██    ██    ██    ██ ██
-- ███████    ██     ██████  ██
--DO NOT EDIT UNLESS YOU KNOW 100% WHAT YOU ARE DOING.
--IF YOU WOULD LIKE TO ADD A NEW GROUP OF LOCATIONS AND DO NOT KNOW WHAT YOU ARE DOING PLEASE OPEN A TICKET.
Citizen.CreateThread(function()
    Citizen.Wait(2500)
    for kg, vg in pairs(Config.Grills) do
        dataGrill = vg
        exports['qb-target']:AddBoxZone('grill'..kg, dataGrill.coords, dataGrill.length, dataGrill.width, {
            name = dataGrill.name,
            heading = dataGrill.heading,
            debugPoly = dataGrill.debugPoly,
            minZ = dataGrill.minZ,
            maxZ = dataGrill.maxZ
        }, {
            options = {
                {
                    label = dataGrill.label,
                    icon = dataGrill.icon,
                    job = dataGrill.job,
                    type = "client",
                    event = "liberty-restaurants:client:CookMenu",
                    args = {
                        location = dataGrill.location
                    }
                },
            },
            distance = 3.0
        })
    end
    for kd, vd in pairs(Config.DrinkLocations) do
        dataDrink = vd
        exports['qb-target']:AddBoxZone('drinkmachine'..kd, dataDrink.coords, dataDrink.length, dataDrink.width, {
            name = dataDrink.name,
            heading = dataDrink.heading,
            debugPoly = dataDrink.debugPoly,
            minZ = dataDrink.minZ,
            maxZ = dataDrink.maxZ
        }, {
            options = {
                {
                    label = dataDrink.label,
                    icon = dataGrill.icon,
                    job = dataDrink.job,
                    type = "client",
                    event = "liberty-restaurants:client:DrinkMenu",
                    args = {
                        location = dataDrink.location
                    }
                },
            },
            distance = 3.0
        })
    end
    for kp, vp in pairs(Config.PrepLocations) do
        dataPrep = vp
        exports['qb-target']:AddBoxZone('prepstation'..kp, dataPrep.coords, dataPrep.length, dataPrep.width, {
            name = dataPrep.name,
            heading = dataPrep.heading,
            debugPoly = dataPrep.debugPoly,
            minZ = dataPrep.minZ,
            maxZ = dataPrep.maxZ
        }, {
            options = {
                {
                    label = dataPrep.label,
                    icon = dataGrill.icon,
                    job = dataPrep.job,
                    type = "client",
                    event = "liberty-restaurants:client:PrepMenu",
                    args = {
                        location = dataPrep.location
                    }
                },
            },
            distance = 3.0
        })
    end
    for km, vm in pairs(Config.MiscLocations) do
        dataMisc = vm
        exports['qb-target']:AddBoxZone('miscstation'..km, dataMisc.coords, dataMisc.length, dataMisc.width, {
            name = dataMisc.name,
            heading = dataMisc.heading,
            debugPoly = dataMisc.debugPoly,
            minZ = dataMisc.minZ,
            maxZ = dataMisc.maxZ
        }, {
            options = {
                {
                    label = dataMisc.label,
                    icon = dataGrill.icon,
                    job = dataMisc.job,
                    type = "client",
                    event = "liberty-restaurants:client:MiscMenu",
                    args = {
                        location = dataMisc.location
                    }
                },
            },
            distance = 3.0
        })
    end
    for kr, vr in pairs(Config.RegisterLocations) do
        dataRegister = vr
        exports['qb-target']:AddBoxZone('register'..kr, dataRegister.coords, dataRegister.length, dataRegister.width, {
            name = dataRegister.name,
            heading = dataRegister.heading,
            debugPoly = dataRegister.debugPoly,
            minZ = dataRegister.minZ,
            maxZ = dataRegister.maxZ
        }, {
            options = {
                {
                    label = dataRegister.label,
                    icon = dataGrill.icon,
                    job = dataRegister.job,
                    type = "client",
                    event = "liberty-restaurants:client:chargeCustomer",
                },
            },
            distance = 3.0
        })
    end
    for kt, vt in pairs(Config.PickupTrays) do
        dataPickup = vt
        exports['qb-target']:AddBoxZone('tray'..kt, dataPickup.coords, dataPickup.length, dataPickup.width, {
            name = dataPickup.name,
            heading = dataPickup.heading,
            debugPoly = dataPickup.debugPoly,
            minZ = dataPickup.minZ,
            maxZ = dataPickup.maxZ
        }, {
            options = {
                {
                    label = dataPickup.label,
                    icon = dataGrill.icon,
                    type = "client",
                    event = "liberty-restaurants:client:openStash",
                    args = {
                        location = dataPickup.location,
                        maxweight = dataPickup.maxweight,
                        slots = dataPickup.slots,
                        label = dataPickup.name,
                    }
                },
            },
            distance = 3.0
        })
    end
    for ks, vs in pairs(Config.Stashes) do
        dataStash = vs
        exports['qb-target']:AddBoxZone('stash'..ks, dataStash.coords, dataStash.length, dataStash.width, {
            name = dataStash.name,
            heading = dataStash.heading,
            debugPoly = dataStash.debugPoly,
            minZ = dataStash.minZ,
            maxZ = dataStash.maxZ
        }, {
            options = {
                {
                    label = dataStash.label,
                    icon = dataGrill.icon,
                    job = dataStash.job,
                    type = "client",
                    event = "liberty-restaurants:client:openStash",
                    args = {
                        location = dataStash.location,
                        slots = dataStash.slots,
                        maxweight = dataStash.maxweight,
                        label = dataStash.name,
                    }
                },
            },
            distance = 3.0
        })
    end
end)