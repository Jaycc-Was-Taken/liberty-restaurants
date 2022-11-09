local QBCore = exports['qb-core']:GetCoreObject()

-- Cash Registers
RegisterNetEvent("liberty-restaurants:client:chargeCustomer", function(data)
   local dialog = exports['qb-input']:ShowInput({
       header = "Charge Customer",
       inputs = {
           {
               type = 'number',
               isRequired = true,
               name = 'cid',
               text = 'ID'
           },
           {
               type = 'number',
               isRequired = true,
               name = 'amount',
               text = 'Amount'
           }
       }
   })
   if dialog then
       if not dialog.cid or not dialog.amount then return end
       TriggerServerEvent("liberty-restaurants:server:chargeCustomer", dialog.cid, dialog.amount, data.location)
   end
end)

-- Wholesale Market Shop

--PED SPAWN STUFF

RegisterNetEvent('liberty-restaurants:client:openStash', function(data)
	TriggerEvent('inventory:client:SetCurrentStash', data.args.label)
	TriggerServerEvent('inventory:server:OpenInventory', "stash", data.args.label, {
		maxweight = data.args.maxweight,
		slots = data.args.slots,
	})
end)
if Config.UseConsumables then
RegisterNetEvent('liberty-restaurants:client:useDrink', function(itemName)
	TriggerEvent('animations:client:EmoteCommandStart', {'drink'})
	QBCore.Functions.Progressbar('use_drink', 'Drinking...', 5000, false, true, {
		disableMovement = false,
		disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
	}, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + 20)
		TriggerServerEvent('liberty-restaurants:server:removeItem', itemName)
	end, function()
		TriggerEvent('animations:client:EmoteCommandStart', {'c'})
	end)
end)
RegisterNetEvent('liberty-restaurants:client:useFood', function(itemName)
	TriggerEvent('animations:client:EmoteCommandStart', {'burger'})
	QBCore.Functions.Progressbar('use_food', 'Eating...', 5000, false, true, {
		disableMovement = false,
		disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
	}, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + 20)
		TriggerServerEvent('liberty-restaurants:server:removeItem', itemName)
	end, function()
		TriggerEvent('animations:client:EmoteCommandStart', {'c'})
	end)
end)
end
-- CreateThread(function()
-- 	CreatePeds()
-- end)