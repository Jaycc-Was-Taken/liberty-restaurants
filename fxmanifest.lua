fx_version 'cerulean'
game 'gta5'

author 'Jaycc'
description 'Restaurant Script'
lua54 'yes'

shared_scripts {
    'config.lua'
}
client_scripts {
    'client/*.lua'
}
server_scripts {
    'server/*.lua'
}
escrow_ignore {
    'config.lua',
    'client/*.lua',
    'server/main.lua',
}