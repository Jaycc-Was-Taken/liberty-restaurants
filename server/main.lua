local QBCore = exports['qb-core']:GetCoreObject()
RegisterServerEvent("liberty-restaurants:server:chargeCustomer", function(cid, amount, job)
    local src = source
    local employee = QBCore.Functions.GetPlayer(src)
    local customer = QBCore.Functions.GetPlayer(tonumber(cid))
    local amount = tonumber(amount)
    if not customer then
        TriggerClientEvent('QBCore:Notify', src, 'Player Not Online', 'error')
        return
    end
    if employee.PlayerData.citizenid == customer.PlayerData.citizenid then
        TriggerClientEvent('QBCore:Notify', src, 'Cannot send yourself invoices', 'error')
        return
    end
    if not amount or amount < 1 then
        TriggerClientEvent('QBCore:Notify', src, 'Must Be A Valid Amount Above 0', 'error')
        return
    end
    local data = {
        buttonAcceptEvent = 'liberty-restaurants:payRegister',
        buttonAcceptData = {
            type = 'server',
            amount = amount,
            society = job,
            employee = src,
        },
        buttonDeclineEvent = 'liberty-restaurants:declineRegister',
        buttonDeclineData = {
            type = 'server',
            employee = src,
        },
    }
    TriggerClientEvent('qb-phone:SendPhoneNotification', customer.PlayerData.source, 'Register', '$'..amount, '', 30000, data)
    TriggerClientEvent('QBCore:Notify', src, 'Invoice Successfully Sent', 'success')
    TriggerClientEvent('QBCore:Notify', customer.PlayerData.source, 'New Invoice Received')
end)
RegisterServerEvent('liberty-restaurants:payRegister', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player ~= nil then
        if Player.Functions.RemoveMoney('bank', data.amount) then
            TriggerEvent('qb-banking:society:server:DepositMoney', src, data.amount, data.society)
            TriggerClientEvent('QBCore:Notify', data.employee, 'Customer Paid', 'success')
            TriggerClientEvent('QBCore:Notify', src, 'Paid', 'success')
        else
            TriggerClientEvent('QBCore:Notify', src, 'Not Enough Money', 'error')
        end
    end
end)
RegisterServerEvent('liberty-restaurants:declineRegister', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player ~= nil then
        local employee = QBCore.Functions.GetPlayer(data.employee)
        if employee ~= nil then
            TriggerClientEvent('QBCore:Notify', src, 'Declined Transaction', 'error')
            TriggerClientEvent('QBCore:Notify', data.employee, 'Customer Declined Transaction', 'error')
        end
    end
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
