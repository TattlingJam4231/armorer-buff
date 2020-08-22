local original_player_definitions = UpgradesTweakData._player_definitions

function UpgradesTweakData:_player_definitions(...)
	original_player_definitions(self, ...)
	
	self.definitions.player_armorer_damage_reduction_1 = {
		name_id = "menu_player_armorer_damage_reduction_1",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "armorer_damage_reduction_1",
			category = "player"
		}
	}
	self.definitions.player_armorer_damage_reduction_2 = {
		name_id = "menu_player_armorer_damage_reduction_2",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "armorer_damage_reduction_2",
			category = "player"
		}
	}
	self.definitions.player_armorer_damage_reduction_3 = {
		name_id = "menu_player_armorer_damage_reduction_3",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "armorer_damage_reduction_3",
			category = "player"
		}
	}
	self.values.player.armorer_damage_reduction_1 = {0.8}
	self.values.player.armorer_damage_reduction_2 = {0.5}
	self.values.player.armorer_damage_reduction_3 = {0.15}
	
	self.definitions.player_armorer_damage_reduction_threshold_1 = {
		name_id = "menu_player_armorer_damage_reduction_threshold_1",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "armorer_damage_reduction_threshold_1",
			category = "player"
		}
	}
	self.definitions.player_armorer_damage_reduction_threshold_2 = {
		name_id = "menu_player_armorer_damage_reduction_threshold_2",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "armorer_damage_reduction_threshold_2",
			category = "player"
		}
	}
	self.definitions.player_armorer_damage_reduction_threshold_3 = {
		name_id = "menu_player_armorer_damage_reduction_threshold_3",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "armorer_damage_reduction_threshold_3",
			category = "player"
		}
	}
	self.values.player.armorer_damage_reduction_threshold_1 = {6.0}
	self.values.player.armorer_damage_reduction_threshold_2 = {12.0}
	self.values.player.armorer_damage_reduction_threshold_3 = {18.0}
end