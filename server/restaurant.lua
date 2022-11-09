local QBCore = exports['qb-core']:GetCoreObject()
QBCore.Functions.CreateCallback('liberty-restaurants:hasIngredients', function(source, cb, ingredients)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local ingredients = ingredients
    local hasIngredients = true
    for k,v in pairs(ingredients) do
        local item = Player.Functions.GetItemByName(ingredients[k].item)
        if item ~= nil then
            hasIngredients = hasIngredients and (item.amount >= ingredients[k].amount)
        else
            hasIngredients = hasIngredients and false
        end
    end
    cb(hasIngredients)
end)

RegisterNetEvent('liberty-restaurants:server:CafeAction', function(items, returnItem)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local removedItems = {}
    local removed = true
    for k,v in pairs(items) do
        local item = Player.Functions.GetItemByName(v.item)
        if item then
            if Player.Functions.RemoveItem(v.item, v.amount) then
                table.insert(removedItems, {item = v.item, amount = v.amount}) 
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[v.item], "remove", v.amount)
                removed =  removed and true
            else
                removed =  removed and false
            end
        end
    end
    if removed then
        for k,v in pairs(returnItem) do
            if Player.Functions.AddItem(v.item, v.amount, false, {}, false) then
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[v.item], "add", v.amount)
            end
        end
    else
        for k, v in pairs(removedItems) do
            Player.Functions.AddItem(v.item, v.amount)
            TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[v.item], "add")
        end
        TriggerClientEvent('QBCore:Notify', src, "Looks like you dropped some items!", "error")
    end
end)