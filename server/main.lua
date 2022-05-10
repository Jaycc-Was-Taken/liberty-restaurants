local QBCore = exports['qb-core']:GetCoreObject()
RegisterServerEvent("liberty-restaurants:server:chargeCustomer", function(cid, amount)
    local src = source
    local employee = QBCore.Functions.GetPlayer(src)
    local customer = QBCore.Functions.GetPlayer(tonumber(cid))
    local amount = tonumber(amount)
    if not customer then
        TriggerClientEvent('QBCore:Notify', src, 'Player Not Online', 'error')
        return false
    end
    if employee.PlayerData.citizenid == customer.PlayerData.citizenid then
        TriggerClientEvent('QBCore:Notify', src, 'Cannot send yourself invoices', 'error')
        return false
    end
    if not amount or amount < 1 then
        TriggerClientEvent('QBCore:Notify', source, 'Must Be A Valid Amount Above 0', 'error')
        return false
    end
    MySQL.Async.insert('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (:citizenid, :amount, :society, :sender)', {
        ['citizenid'] = customer.PlayerData.citizenid,
        ['amount'] = amount,
        ['society'] = employee.PlayerData.job.name,
        ['sender'] = employee.PlayerData.charinfo.firstname
    })
    TriggerClientEvent('qb-phone:RefreshPhone', customer.PlayerData.source)
    TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
    TriggerClientEvent('QBCore:Notify', customer.PlayerData.source, 'New Invoice Received')
end)

if Config.UseConsumables then
    CreateThread(function()
        for _,d in pairs(Config.Consumables['drink']) do
            QBCore.Functions.CreateUseableItem(d, function(source, item) 
                TriggerClientEvent('liberty-restaurants:client:useDrink', source, item.name) 
            end)
        end
        for _,f in pairs(Config.Consumables['food']) do
            QBCore.Functions.CreateUseableItem(f, function(source, item) 
                TriggerClientEvent('liberty-restaurants:client:useFood', source, item.name) 
            end)
        end
    end)
end