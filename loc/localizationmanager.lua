Hooks:Add("LocalizationManagerPostInit", "Armorer Buff Localization", function(loc)
	LocalizationManager:add_localized_strings({
        ["menu_deck3_3_desc"] = "You gain an additional ##10%## more armor.\n\nDamage you take beyond ##50## is reduced by ##30%##.",
        ["menu_deck3_5_desc"] = "You gain an additional ##10%## more armor.\n\nDamage you take beyond ##100## is reduced by an additional ##30%##.",
        ["menu_deck3_9_desc"] = "You gain an additional ##5%## more armor.\n\nReduces the armor recovery time for you and your crew by ##10%##.\n\nDamage you take beyond ##150## is reduced by an additional ##30%##.\n\nDeck Completion Bonus: Your chance of getting a higher quality item during a PAYDAY is increased by ##10%##."
    })
end)