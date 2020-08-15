function PlayerManager:armorer_damage_reduction(damage)
	
	local dmg = damage
	local damage_reduction_1 = self:upgrade_value("player", "armorer_damage_reduction_1", 0)
	local damage_threshold_1 = self:upgrade_value("player", "armorer_damage_reduction_threshold_1", 0)
	local damage_reduction_2 = self:upgrade_value("player", "armorer_damage_reduction_2", 0)
	local damage_threshold_2 = self:upgrade_value("player", "armorer_damage_reduction_threshold_2", 0)
	local damage_reduction_3 = self:upgrade_value("player", "armorer_damage_reduction_3", 0)
	local damage_threshold_3 = self:upgrade_value("player", "armorer_damage_reduction_threshold_3", 0)
	local damage_threshold_4 = 300
	
	if damage_reduction_3 ~= 0 then
		dmg = math.max(dmg - damage_threshold_4, 0) 
			  + (math.max(math.min(damage_threshold_4 - damage_threshold_3, dmg - damage_threshold_3), 0) * damage_reduction_3)
			  + (math.max(math.min(damage_threshold_3 - damage_threshold_2, dmg - damage_threshold_2), 0) * damage_reduction_2)
			  + (math.max(math.min(damage_threshold_2 - damage_threshold_1, dmg - damage_threshold_1), 0) * damage_reduction_1)
			  + math.min(damage_threshold_1, dmg)
		
	elseif damage_reduction_2 ~= 0 then
		dmg = math.max(dmg - damage_threshold_4, 0) 
			  + (math.max(math.min(damage_threshold_4 - damage_threshold_2, dmg - damage_threshold_2), 0) * damage_reduction_2)
			  + (math.max(math.min(damage_threshold_2 - damage_threshold_1, dmg - damage_threshold_1), 0) * damage_reduction_1)
			  + math.min(damage_threshold_1, dmg)
		
	elseif damage_reduction_1 ~= 0 then
		dmg = math.max(dmg - damage_threshold_4, 0)
			  + (math.max(math.min(damage_threshold_4 - damage_threshold_1, dmg - damage_threshold_1), 0) * damage_reduction_1)
			  + math.min(damage_threshold_1, dmg)
	end
	
	return dmg
end
