local QBCore = nil
local ESX = nil
local framework = nil

CreateThread(function()
    -- Detect ESX (legacy & newer)
    if GetResourceState('es_extended') == 'started' then
        ESX = exports['es_extended']:getSharedObject()
        framework = 'esx'
    elseif GetResourceState('qb-core') == 'started' then
        QBCore = exports['qb-core']:GetCoreObject()
        framework = 'qbcore'
    else
        lib.notify({
            title = "Error",
            description = "No compatible framework detected.",
            type = "error"
        })
        return
    end

    -- Register commands from config
    for _, data in pairs(Config.Currencies) do
        RegisterCommand(data.command, function()
            checkCurrency(data)
        end, false)
    end
end)

function checkCurrency(data)
    if framework == 'esx' then
        ESX.TriggerServerCallback('ad-showfunds:getAccount', function(amount)
            if amount ~= nil then
                lib.notify({
                    title = data.label,
                    description = ("%s You have $%s in %s"):format(data.icon, amount, data.label),
                    type = 'inform'
                })
            else
                lib.notify({
                    title = data.label,
                    description = "Account not found.",
                    type = 'error'
                })
            end
        end, data.account)

    elseif framework == 'qbcore' then
        local playerData = QBCore.Functions.GetPlayerData()
        local amount = playerData.money[data.account]

        if amount ~= nil then
            lib.notify({
                title = data.label,
                description = ("%s You have $%s in %s"):format(data.icon, amount, data.label),
                type = 'inform'
            })
        else
            lib.notify({
                title = data.label,
                description = "Account not found.",
                type = 'error'
            })
        end
    end
end
