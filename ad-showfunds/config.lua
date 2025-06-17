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
