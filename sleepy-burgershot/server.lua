local QBCore = exports['qb-core']:GetCoreObject()


-- Events for station menus
RegisterNetEvent('sleepy-burgershot:server:Makesoftdrink', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem('softdrink')
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["softdrink"], "add")
end)

RegisterNetEvent('sleepy-burgershot:server:milkshake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem('milkshake')
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["milkshake"], "add")
end)

RegisterNetEvent('sleepy-burgershot:server:Makeheartstopper', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Meat = QBCore.Functions.GetItemByName('raw_patty')

    if Meat ~= nil then
        Player.Functions.RemoveItem('raw_patty')
        Player.Functions.AddItem('heartstopper')
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["heartstopper"], "add")

    end
end)

RegisterNetEvent('sleepy-burgershot:server:Makefries', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem('freedomfry')
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['freedomfry'] "add")
    
end)

RegisterNetEvent('sleepy-burgershot:server:Makemurdermeal', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Fry = Player.Functions.GetItemByName('freedomfry')
    local HeartStopper = Player.Functions.GetItemByName('heartstopper')
    local Drink = Player.Functions.GetItemByName('softdrink')

    if Fry ~= nil and HeartStopper ~= nil and Drink ~= nil then 

        Player.Functions.RemoveItem('freedomfry')
        Player.Functions.RemoveItem('heartstopper')
        Player.Functions.RemoveItem('softdrink')
        Player.Functions.AddItem('murdermeal')
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['murdermeal'] "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'Missing Some Items', 'error')
    end
end)


RegisterNetEvent("sleepy-burgershot:server:openmurdermeal")
AddEventHandler("sleepy-burgershot:server:openmurdermeal", function(source, item)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('heartstopper', 2)
    Player.Functions.AddItem('softdrink', 2) 
    Player.Functions.AddItem('freedomfry', 2)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['murdermeal'] , "add")
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['freedomfry'] , "add")
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['softdrink'] , "add")
end)



