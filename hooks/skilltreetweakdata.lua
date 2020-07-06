local original_init = SkillTreeTweakData.init

function SkillTreeTweakData:init(...)
	original_init(self, ...)
	
	table.insert(self.specializations[3][3].upgrades, "player_armorer_damage_reduction_1")
	table.insert(self.specializations[3][5].upgrades, "player_armorer_damage_reduction_2")
	table.insert(self.specializations[3][9].upgrades, "player_armorer_damage_reduction_3")
	
	table.insert(self.specializations[3][3].upgrades, "player_armorer_damage_reduction_threshold_1")
	table.insert(self.specializations[3][5].upgrades, "player_armorer_damage_reduction_threshold_2")
	table.insert(self.specializations[3][9].upgrades, "player_armorer_damage_reduction_threshold_3")
	
end