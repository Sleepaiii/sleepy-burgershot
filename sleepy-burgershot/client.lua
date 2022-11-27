local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			if PlayerData.job.name == "burgershot" then
				TriggerServerEvent("QBCore:ToggleDuty")
			end
		end
	end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent("sleepy-burgershot:client:Duty", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)



--Blip 
Citizen.CreateThread(function()
    BurgerShot = AddBlipForCoord(-1197.32, -897.655, 13.995)
    SetBlipSprite (BurgerShot, 106)
    SetBlipDisplay(BurgerShot, 4)
    SetBlipScale  (BurgerShot, 0.5)
    SetBlipAsShortRange(BurgerShot, true)
    SetBlipColour(BurgerShot, 75)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("BurgerShot")
    EndTextCommandSetBlipName(BurgerShot)
end) 

--Stashes
RegisterNetEvent('sleepy-burgershot:client:Tray1', function() 
    TriggerEvent("inventory:client:SetCurrentStash", "BurgerTray1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "BurgerTray1", {
        maxweight = 200000,
        slots = 10,
    })
end)

RegisterNetEvent('sleepy-burgershot:client:Tray2', function() 
    TriggerEvent("inventory:client:SetCurrentStash", "BurgerTray2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "BurgerTray2", {
        maxweight = 200000,
        slots = 10,
    })
end)

RegisterNetEvent('sleepy-burgershot:client:Warmer', function() 
    TriggerEvent("inventory:client:SetCurrentStash", "burgerwarmer")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "burgerwarmer", {
        maxweight = 1000000,
        slots = 40,
    })
end)

RegisterNetEvent('sleepy-burgershot:client:fridge', function() 
    TriggerEvent("inventory:client:SetCurrentStash", "burgerfridge")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "burgerfridge", {
        maxweight = 1000000,
        slots = 40,
    })
end)

-- Menus

RegisterNetEvent('sleepy-burgershot:client:DrinksMenu', function ()
    exports['qb-menu']:openMenu({
        {
            header = "Drink Machine",
            isMenuHeader = true,
        },
        {
            header = "Close",
            txt = "",
            icon = "fas fa-circle-xmark",
            params = {
                event = "qb-menu:closeMenu"
            }
        },
        {
            header = "Make Soda",
            txt = "Zizzurp",
            icon = "softdrink",
            params = {
                event = "sleepy-burgershot:client:Makesoftdrink",
                }
            },
        {
            header = "Make Milkshake",
            txt = "Beef yourself up you fat fuck",
            icon = "milkshake",
            params = {
                event = "sleepy-burgershot:client:Makemilkshake",
            }
        }})
    
end)

RegisterNetEvent('sleepy-burgershot:client:grillmenu', function ()
    exports['qb-menu']:openMenu({
        {
            header = "Grill",
            isMenuHeader = true,
        },
        {
            header = "Close",
            txt = "",
            icon = "fas fa-circle-xmark",
            params = {
                event = "qb-menu:closeMenu"
            }
        },
        {
            header = "HeartStopper",
            txt = "Any Type of Meat, They dont need to Know",
            icon = "heartstopper",
            params = {
                event = "sleep-burgershot:client:Makeheartstopper",
            }
        }, 
        {
            header = "Bleeder",
            txt = "Any Type of Meat, Might give them an ulcer tho",
            icon = "bleeder",
            params = {
                event = "sleep-burgershot:client:Makebleeder",
            }
        },
        })
    end)

    RegisterNetEvent('sleepy-burgershot:client:frymenu', function ()
        exports['qb-menu']:openMenu({
            {
                header = "Fryer",
                isMenuHeader = true,
            },
            {
                header = "Close",
                txt = "",
                icon = "fas fa-circle-xmark",
                params = {
                    event = "qb-menu:closeMenu"
                }
            },
            {
                header = "Freedom Fries",
                txt = "Make them feel free when they are trapped",
                icon = "freedomfry",
                params = {
                    event = "sleep-burgershot:client:Makefries",
                }
            }, 
            })
        end)

        RegisterNetEvent('sleepy-burgershot:client:CuttingMenu', function()
            exports['qb-menu']:openMenu({
                {
                    header = "Cutting Board",
                    isMenuHeader = true,
                },
                {
                    header = "Close",
                    txt = "",
                    icon = "fas fa-circle-xmark",
                    params = {
                        event = "qb-menu:closeMenu"
                    }
                },
                {
                    header = "Make MurderMeal",
                    txt = "Ingredents: <br> 1 HeartStopper <br> 1 Soda <br> 1 FreedomFry <br>",
                    icon = "murdermeal",
                    params = {
                        event = "sleepy-burgershot:client:Makemurdermeal"
                    }
                },
                {
                    header = "Make Pattys",
                    txt = "1 Star Carcass",
                    icon = "huntingcarcass1",
                    params = {
                        event = "sleepy-burgershot:client:Makeshitpatty"
                    }
                },
                {
                    header = "Make Pattys",
                    txt = "2 Star Carcass",
                    icon = "huntingcarcass2",
                    params = {
                        event = "sleepy-burgershot:client:Makeokpatty"
                    }
                },
            })
            
        end)
















-- Item Creation 

RegisterNetEvent("sleepy-burgershot:client:Makesoftdrink", function()  
TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
QBCore.Functions.Progressbar('make_drink', 'Making Bev...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('sleepy-burgershot:server:Makesoftdrink')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent("sleepy-burgershot:client:Makemilkshake", function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('make_drink', 'Making Bev...', 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            TriggerServerEvent('sleepy-burgershot:server:milkshake')
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end)
    end)

    RegisterNetEvent("sleepy-burgershot:client:Makefries", function()  
        TriggerEvent('animations:client:EmoteCommandStart', {"picklock"})
        QBCore.Functions.Progressbar('make_drink', 'Frying...', 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerServerEvent('sleepy-burgershot:server:Makefries')
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end)
        end)

        RegisterNetEvent('sleepy-burgershot:client:Makemurdermeal', function()
            TriggerEvent('animations:client:EmoteCommandStart', {"picklock"})
            QBCore.Functions.Progressbar('make_meal', 'Makin Meal...', 5000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                TriggerServerEvent('sleepy-burgershot:server:Makemurdermeal')
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            end)
        end)

    --Client for murdermeal
    RegisterNetEvent('sleepy-burgershot:client:openmurdermeal', function()
        QBCore.Functions.Progressbar("meal_open", "Opening MurderMeal..", 5000, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() 
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["murdermeal"], "remove")
            TriggerServerEvent("sleepy-burgershot:server:openmurdermeal")
        end)
    end)


    --Meat shop -- might remove in future for laptop app
    RegisterNetEvent('sleepy-burgershot:client:mshop', function()
        if onDuty then
            TriggerServerEvent("inventory:server:OpenInventory", "shop", "burgershot", Config.store)
        end
    end)