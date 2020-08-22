Hooks:Add("LocalizationManagerPostInit", "Armorer Buff Localization", function(loc)
	LocalizationManager:add_localized_strings({
        ["menu_deck3_3_desc"] = "You gain an additional ##10%## more armor.\n\nDamage you take exceeding ##60## is reduced by ##20%##. Damage exceeding ##300## is not reduced.",
		-- ["menu_deck3_3"] = "Test",
        ["menu_deck3_5_desc"] = "You gain an additional ##10%## more armor.\n\nDamage you take exceeding ##120## is reduced by an additional ##30%##. Damage exceeding ##300## is not reduced.",
        ["menu_deck3_9_desc"] = "You gain an additional ##5%## more armor.\n\nReduces the armor recovery time for you and your crew by ##10%##.\n\nDamage you take exceeding ##180## is reduced by an additional ##35%##. Damage exceeding ##300## is not reduced.\n\nDeck Completion Bonus: Your chance of getting a higher quality item during a PAYDAY is increased by ##10%##."
    })
end)