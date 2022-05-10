local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('liberty-restaurants:client:CafeAction', function(data)
    local items = data.items
    QBCore.Functions.TriggerCallback('liberty-restaurants:hasIngredients', function(enoughItems)
       if enoughItems then
         if data.spatula then
             TriggerEvent('animations:client:EmoteCommandStart', {"BBQ"})
         else
             TriggerEvent('animations:client:EmoteCommandStart', {"cokecut"})
         end
         QBCore.Functions.Progressbar('kitchenAction', 'Working...', data.time, false, true, {
         disableMovement = true,
         disableCarMovement = true,
         disableMouse = false,
         disableCombat = true,
         }, {}, {}, {}, function()
             TriggerEvent('animations:client:EmoteCommandStart', {"c"})
             TriggerServerEvent('liberty-restaurants:server:CafeAction', items, data.returnItem)
         end, function()
             TriggerEvent('animations:client:EmoteCommandStart', {"c"})
             QBCore.Functions.Notify('Cancelled.')
         end)
       else
          QBCore.Functions.Notify('Not enough ingredients.', 'error')
       end
    end, items)
 end)