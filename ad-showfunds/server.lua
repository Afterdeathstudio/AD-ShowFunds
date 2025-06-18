--      _     __ _            ____             _   _     
--     / \   / _| |_ ___ _ __|  _ \  ___  __ _| |_| |__  
--    / _ \ | |_| __/ _ \ '__| | | |/ _ \/ _` | __| '_ \ 
--   / ___ \|  _| ||  __/ |  | |_| |  __/ (_| | |_| | | |
--  /_/   \_\_|  \__\___|_|  |____/ \___|\__,_|\__|_| |_|
-- https://discord.gg/5D3wdy4dQH ┃ https://github.com/Afterdeathstudio ┃ https://afterdeath.gitbook.io/afterdeath-studios/

local ESX = exports['es_extended']:getSharedObject()

ESX.RegisterServerCallback('ad-showfunds:getAccount', function(src, cb, account)
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return cb(nil) end

    local acc = xPlayer.getAccount(account)
    cb(acc and acc.money or 0)
end)
