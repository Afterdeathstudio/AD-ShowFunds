--      _     __ _            ____             _   _     
--     / \   / _| |_ ___ _ __|  _ \  ___  __ _| |_| |__  
--    / _ \ | |_| __/ _ \ '__| | | |/ _ \/ _` | __| '_ \ 
--   / ___ \|  _| ||  __/ |  | |_| |  __/ (_| | |_| | | |
--  /_/   \_\_|  \__\___|_|  |____/ \___|\__,_|\__|_| |_|
-- https://discord.gg/5D3wdy4dQH ┃ https://github.com/Afterdeathstudio ┃ https://afterdeath.gitbook.io/afterdeath-studios/

Config = {}

-- List of currencies to support
Config.Currencies = {
    cash = {
        label = "Cash",
        icon = "💵",
        command = "cash",
        account = "money"
    },
    bank = {
        label = "Bank",
        icon = "🏦",
        command = "bank",
        account = "bank"
    },
    -- Add more if needed:
    -- blackmoney = {
    --     label = "Black Money",
    --     icon = "🖤",
    --     command = "black",
    --     account = "black_money"
    -- }
}
