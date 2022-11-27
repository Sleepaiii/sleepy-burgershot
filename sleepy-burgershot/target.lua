local QBCore = exports['qb-core']:GetCoreObject()


-- Cash Registers

exports['qb-target']:AddBoxZone("BurgerShot_register_1", vector3(-1195.29, -892.36, 13.98), 1.0, 0.3, {
    name="BurgerShot_register_1",
    debugPoly=Config.Debug,
    heading=305,
    minZ=10.48,
    maxZ=14.48,
}, {
        options = {
            {
                event = "jim-payments:client:Charge",
                icon = "fas fa-receipt",
                label = "Charge Customer",
                job = Config.Job,
            },
        },
        distance = 2.0
    })

    exports['qb-target']:AddBoxZone("BurgerShot_register_2", vector3(-1194.26, -893.88, 13.98), 0.8, 0.3, {
        name="BurgerShot_register_2",
        debugPoly=Config.Debug,
        heading=305,
        minZ=10.58,
        maxZ=14.58
    }, {
            options = {
                {
                    event = "jim-payments:client:Charge",
                    icon = "fas fa-receipt",
                    label = "Charge Customer",
                    job = Config.Job,
                },
            },
            distance = 2.0
        })

        exports['qb-target']:AddBoxZone("BurgerShot_DriveThru", vector3(-1192.74, -906.45, 13.98), 0.5, 0.5, {
            name="BurgerShot_Drivethru",
            debugPoly=Config.Debug,
            heading=352,
            minZ=10.38,
            maxZ=14.38,
        }, {
                options = {
                    {
                        event = "jim-payments:client:Charge",
                        icon = "fas fa-receipt",
                        label = "Charge Customer",
                        job = Config.Job,
                    },
                },
                distance = 2.0
            })

        -- Stashes

        exports['qb-target']:AddBoxZone("BurgerShot_Warmer", vector3(-1197.87, -893.98, 13.98), 3.0, 0.8, {
            name="BurgerShot_Warmer",
            debugPoly=Config.Debug,
            heading=34,
            minZ=10.78,
            maxZ=14.78,
        }, {
                options = {
                    {
                        event = "sleepy-burgershot:client:Warmer",
                        icon = "fas fa-solid fa-mitten",
                        label = "Open Warmer",
                        job = Config.Job,
                    },
                },
                distance = 3.0
            })

            exports['qb-target']:AddBoxZone("BurgerShot_Tray_1", vector3(-1193.89, -894.36, 13.98), 1, 0.4, {
                name="BurgerShot_Tray1",
                debugPoly=Config.Debug,
                heading=34,
                minZ=10.43,
                maxZ=14.43,
            }, {
                    options = {
                        {
                            event = "sleepy-burgershot:client:Tray_1",
                            icon = "fas fa-circle",
                            label = "Open Tray",
                        },
                    },
                    distance = 2.5
                })

                exports['qb-target']:AddBoxZone("BurgerShot_Tray_2", vector3(-1194.91, -892.83, 13.98), 1.2, 0.2, {
                    name="BurgerShot_Tray_2",
                    debugPoly=Config.Debug,
                    heading=305,
                    minZ=10.48,
                    maxZ=14.48,
                }, {
                        options = {
                            {
                                event = "sleepy-burgershot:client:Tray2",
                                icon = "fas fa-circle",
                                label = "Open Tray",
                            },
                        },
                        distance = 2.5
                    })

                    exports['qb-target']:AddBoxZone("BurgerShot_Fridge", vector3(-1196.43, -902.18, 13.98), 0.8, 1.4, {
                        name="BurgerShot_Fridge",
                        debugPoly=Config.Debug,
                        heading=35,
                        minZ=11.58,
                        maxZ=15.58,
                    }, {
                            options = {
                                {
                                    event = "sleepy-burgershot:client:fridge",
                                    icon = "fas fa-snowflake",
                                    label = "Open Freezer",
                                    job = Config.Job,
                                },
                                {
                                    event = "sleepy-burgershot:client:mshop",
                                    icon = "fas fa-receipt",
                                    label = "Meat Shop",
                                    job = Config.job,
                                },
                            },
                            distance = 2.0
                        })
                        --stations and duty
                        exports['qb-target']:AddBoxZone("BurgerShot_Drinks", vector3(-1199.98, -895.41, 13.98), 2, 0.8, {
                            name="BurgerShot_Drinks",
                            debugPoly=Config.Debug,
                            heading=34,
                            minZ=10.78,
                            maxZ=14.78
                        }, {
                                options = {
                                    {
                                        event = "sleepy-burgershot:client:DrinksMenu",
                                        icon = "fas fa-circle",
                                        label = "Make Drinks",
                                        job = Config.Job,
                                    },
                                },
                                distance = 2.5
                            })
                            exports['qb-target']:AddBoxZone("BurgerShot_Grill", vector3(-1202.94, -897.32, 13.98), 1, 1.6, {
                                name="BurgerShot_Grill",
                                debugPoly=Config.Debug,
                                heading=304,
                                minZ=10.78,
                                maxZ=14.78
                            }, {
                                    options = {
                                        {
                                            event = "sleepy-burgershot:client:grillmenu",
                                            icon = "fas fas fa-circle",
                                            label = "Use Grill",
                                            job = Config.Job,
                                        },
                                    },
                                    distance = 2.5
                                })
                                exports['qb-target']:AddBoxZone("BurgerShot_Fries", vector3(-1201.93, -898.69, 13.98), 1, 1.6, {
                                    name="BurgerShot_Fries",
                                    debugPoly=Config.Debug,
                                    heading=306,
                                    minZ=10.38,
                                    maxZ=14.38
                                }, {
                                        options = {
                                            {
                                                event = "sleepy-burgershot:client:frymenu",
                                                icon = "fas fa-circle",
                                                label = "Use Fryer",
                                                job = Config.Job,
                                            },
                                        },
                                        distance = 2.5
                                    })
                                    exports['qb-target']:AddBoxZone("BurgerShot_CuttingBoard", vector3(-1198.47, -898.47, 13.98), 1, 1.6, {
                                        name="BurgerShot_CuttingBoard",
                                        debugPoly=Config.Debug,
                                        heading=34,
                                        minZ=10.43,
                                        maxZ=14.43
                                    }, {
                                            options = {
                                                {
                                                    event = "sleepy-burgershot:client:CuttingMenu",
                                                    icon = "fas fa-circle",
                                                    label = "Cutting Board",
                                                    job = Config.Job,
                                                },
                                            },
                                            distance = 4.0
                                        })
                            exports['qb-target']:AddBoxZone("BurgerShot_Duty", vector3(-1190.11, -902.52, 13.98), 1.4, 0.2, {
                                name="BurgerShot_Duty",
                                debugPoly=Config.Debug,
                                heading=34,
                                minZ=11.58,
                                maxZ=15.58
                            }, {
                                    options = {
                                        {
                                            event = "sleepy-burgershot:client:Duty",
                                            icon = "fas fa-circle",
                                            label = "Go On/Off Duty",
                                            job = Config.Job,
                                        },
                                    },
                                    distance = 2.5
                                })

