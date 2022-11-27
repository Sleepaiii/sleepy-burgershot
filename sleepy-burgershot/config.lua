Config = {}

Config.Debug = false -- Set true to see polyzones

Config.Job = "burgershot" -- Change this to your job name or targets will not work

Config.store = {
    label = 'Meat Storage',
    slots = 2,
    item = {
        [1] = {
            name = "raw_patty",
            price = 150,
            amount = 999,
            info = {},
            type = "item",
            slot = 1,
        },
    }
}