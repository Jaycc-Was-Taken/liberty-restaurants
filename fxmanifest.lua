fx_version 'cerulean'
game 'gta5'

author 'Jaycc'
description 'Restaurant Script'
lua54 'yes'

shared_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/ComboZone.lua',
    '@PolyZone/CircleZone.lua',
    'config.lua',
    'janitors/*.lua',
    'shops.lua',
}
client_scripts {
    'client/*.lua'
}
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua'
}
