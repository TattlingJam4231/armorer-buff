function PlayerManager:armorer_damage_reduction(damage)
	
	local dmg = damage
	local damage_reduction_1 = 1
	local damage_threshold_1 = 0
	local damage_reduction_2 = 1
	local damage_threshold_2 = 0
	local damage_reduction_3 = 1
	local damage_threshold_3 = 0
	
	
	if self:has_category_upgrade("player", "armorer_damage_reduction_1") then
		damage_reduction_1 = self:upgrade_value_by_level("player", "armorer_damage_reduction_1", 1, nil)
		damage_threshold_1 = self:upgrade_value_by_level("player", "armorer_damage_reduction_threshold_1", 1, nil)
	else
		damage_reduction_1 = nil
		damage_threshold_1 = nil
	end
	
	if self:has_category_upgrade("player", "armorer_damage_reduction_2") then
		damage_reduction_2 = self:upgrade_value_by_level("player", "armorer_damage_reduction_2", 1, nil)
		damage_threshold_2 = self:upgrade_value_by_level("player", "armorer_damage_reduction_threshold_2", 1, nil)
	else
		damage_reduction_2 = nil
		damage_threshold_2 = nil
	end
	
	if self:has_category_upgrade("player", "armorer_damage_reduction_3") then
		damage_reduction_3 = self:upgrade_value_by_level("player", "armorer_damage_reduction_3", 1, nil)
		damage_threshold_3 = self:upgrade_value_by_level("player", "armorer_damage_reduction_threshold_3", 1, nil)
	else
		damage_reduction_3 = nil
		damage_threshold_3 = nil
	end
	
	if damage_reduction_3 then
		if damage_threshold_3 <  dmg then
			 dmg = (( dmg - damage_threshold_3) * damage_reduction_3) + ((damage_threshold_3 - damage_threshold_2) * damage_reduction_2) + ((damage_threshold_2 - damage_threshold_1) * damage_reduction_1) + damage_threshold_1
		elseif damage_threshold_2 <  dmg then
			 dmg = ((dmg - damage_threshold_2) * damage_reduction_2) + ((damage_threshold_2 - damage_threshold_1) * damage_reduction_1) + damage_threshold_1
		elseif damage_threshold_1 <  dmg then
			 dmg = ((dmg - damage_threshold_1) * damage_reduction_1) + damage_threshold_1
		end
	elseif damage_reduction_2 then
		if damage_threshold_2 <  dmg then
			 dmg = ((dmg - damage_threshold_2) * damage_reduction_2) + ((damage_threshold_2 - damage_threshold_1) * damage_reduction_1) + damage_threshold_1
		elseif damage_threshold_1 <  dmg then
			 dmg = ((dmg - damage_threshold_1) * damage_reduction_1) + damage_threshold_1
		end
	elseif damage_reduction_1 then
		if damage_threshold_1 <  dmg then
			 dmg = ((dmg - damage_threshold_1) * damage_reduction_1) + damage_threshold_1
		end
	end
	
	return dmg
end
