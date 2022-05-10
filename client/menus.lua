local QBCore = exports['qb-core']:GetCoreObject()
-- ███████ ████████  ██████  ██████
-- ██         ██    ██    ██ ██   ██
-- ███████    ██    ██    ██ ██████
--      ██    ██    ██    ██ ██
-- ███████    ██     ██████  ██
--DO NOT EDIT UNLESS YOU KNOW WHAT YOU ARE DOING.
--IF YOU WOULD LIKE TO ADD A NEW GROUP OF MENUS AND DO NOT KNOW WHAT YOU ARE DOING PLEASE OPEN A TICKET.
RegisterNetEvent('liberty-restaurants:client:CookMenu', function(data)
    local location = data.args.location
    local CookMenu = {
        {
            header = 'Prepare Food',
            txt = 'Close.',
            params = {
                event = 'qb-menu:client:closeMenu',
            }
        }
    }
    for k,v in pairs(Config.CookMenu[location]) do
        CookMenu[#CookMenu + 1] = {
            header = v.Name,
            txt = v.Text,
            params = {
                event = 'liberty-restaurants:client:CafeAction',
                args = {
                    items = v.RequiredItems,
                    returnItem = v.ReturnItem,
                    time = v.time or 12000,
                    spatula = v.spatula,
                }
            }
        }
    end
    exports['qb-menu']:openMenu(CookMenu)
end)
RegisterNetEvent('liberty-restaurants:client:DrinkMenu', function(data)
    local location = data.args.location
    local DrinkMenu = {
        {
            header = 'Prepare Drinks',
            txt = 'Close.',
            params = {
                event = 'qb-menu:client:closeMenu',
            }
        }
    }
    for k,v in pairs(Config.DrinkMenu[location]) do
        DrinkMenu[#DrinkMenu + 1] = {
            header = v.Name,
            txt = v.Text,
            params = {
                event = 'liberty-restaurants:client:CafeAction',
                args = {
                    items = v.RequiredItems,
                    returnItem = v.ReturnItem,
                    time = v.time or 12000,
                    spatula = v.spatula,
                }
            }
        }
    end
    exports['qb-menu']:openMenu(DrinkMenu)
end)
RegisterNetEvent('liberty-restaurants:client:PrepMenu', function(data)
    local location = data.args.location
    local PrepMenu = {
        {
            header = 'Prepare Food',
            txt = 'Close.',
            params = {
                event = 'qb-menu:client:closeMenu',
            }
        }
    }
    for k,v in pairs(Config.PrepMenu[location]) do
        PrepMenu[#PrepMenu + 1] = {
            header = v.Name,
            txt = v.Text,
            params = {
                event = 'liberty-restaurants:client:CafeAction',
                args = {
                    items = v.RequiredItems,
                    returnItem = v.ReturnItem,
                    time = v.time or 12000,
                    spatula = v.spatula,
                }
            }
        }
    end
    exports['qb-menu']:openMenu(PrepMenu)
end)
RegisterNetEvent('liberty-restaurants:client:MiscMenu', function(data)
    local location = data.args.location
    local MiscMenu = {
        {
            header = 'Prepare Food',
            txt = 'Close.',
            params = {
                event = 'qb-menu:client:closeMenu',
            }
        }
    }
    for k,v in pairs(Config.MiscMenu[location]) do
        MiscMenu[#MiscMenu + 1] = {
            header = v.Name,
            txt = v.Text,
            params = {
                event = 'liberty-restaurants:client:CafeAction',
                args = {
                    items = v.RequiredItems,
                    returnItem = v.ReturnItem,
                    time = v.time or 12000,
                    spatula = v.spatula,
                }
            }
        }
    end
    exports['qb-menu']:openMenu(MiscMenu)
end)