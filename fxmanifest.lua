fx_version 'adamant'

game 'gta5'

description 'CB Orgs'

version '1.0.0'

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    '@es_extended/locale.lua',
    'locales/en.lua',
    'config.lua',
    'server/main.lua'
}

client_scripts {
    '@es_extended/locale.lua',
    'locales/en.lua',
    'config.lua',
    'client/main.lua'
}

dependencies {
    'es_extended',
    'cron',
    'esx_addonaccount',
    'esx_addoninventory',
    'esx_advancedgarage',
    'play_instance'
}