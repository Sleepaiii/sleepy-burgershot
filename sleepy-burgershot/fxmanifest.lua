fx_version 'cerulean'
game 'gta5'

author 'Sleepy'
description 'Simple BurgerShot For QBCore'
version '1.0.0'

lua54 'yes'

client_scripts{
    'client.lua',
    'target.lua',
    '@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua'
}

shared_scripts{
    'config.lua',
}

server_scripts {
    'server.lua',
}
