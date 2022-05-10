local QBCore = exports['qb-core']:GetCoreObject()

-- Cash Registers
RegisterNetEvent("liberty-restaurants:client:chargeCustomer", function()
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
       TriggerServerEvent("liberty-restaurants:server:chargeCustomer", dialog.cid, dialog.amount)
   end
end)

-- Wholesale Market Shop
RegisterNetEvent('liberty-restaurants:client:openMarket', function()
   TriggerServerEvent("inventory:server:OpenInventory", "shop", "wholesalemarket", Config.ShopItems)
end)

--PED SPAWN STUFF
local peds = {}
local shopPeds = {}
function CreatePeds()
	while true do
		Citizen.Wait(500)
		for k = 1, #Config.PedList, 1 do
			v = Config.PedList[k]
			local playerCoords = GetEntityCoords(PlayerPedId())
			local dist = #(playerCoords - v.coords)
			if dist < Config.Distance and not peds[k] then
				local ped = nearPed(v.model, v.coords, v.heading, v.gender, v.animDict, v.animName, v.scenario)
				peds[k] = {ped = ped}
			end
			if dist >= Config.Distance and peds[k] then
				if Config.Fade then
					for i = 255, 0, -51 do
						Citizen.Wait(50)
						SetEntityAlpha(peds[k].ped, i, false)
					end
				end
				DeletePed(peds[k].ped)
				peds[k] = nil
			end
		end
	end
end

function nearPed(model, coords, heading, gender, animDict, animName, scenario)
	RequestModel(GetHashKey(model))
	while not HasModelLoaded(GetHashKey(model)) do
		Citizen.Wait(1)
	end
	if gender == 'male' then
		genderNum = 4
	elseif gender == 'female' then 
		genderNum = 5
	else
		print("No gender provided! Check your configuration!")
	end
   ped = CreatePed(genderNum, GetHashKey(v.model), coords, heading, false, true)
   table.insert(shopPeds, ped)
	SetEntityAlpha(ped, 0, false)
	if Config.Frozen then
		FreezeEntityPosition(ped, true)
	end
	if Config.Invincible then
		SetEntityInvincible(ped, true)
	end
	if Config.Stoic then
		SetBlockingOfNonTemporaryEvents(ped, true)
	end
	if Config.Fade then
		for i = 0, 255, 51 do
			Citizen.Wait(50)
			SetEntityAlpha(ped, i, false)
		end
	end
	return ped
end
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
	TriggerEvent('animations:client:EmoteCommandStart', {'eat'})
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