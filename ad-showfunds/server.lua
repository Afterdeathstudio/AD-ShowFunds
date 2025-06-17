local ESX = exports['es_extended']:getSharedObject()

ESX.RegisterServerCallback('ad-showfunds:getAccount', function(src, cb, account)
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return cb(nil) end

    local acc = xPlayer.getAccount(account)
    cb(acc and acc.money or 0)
end)
