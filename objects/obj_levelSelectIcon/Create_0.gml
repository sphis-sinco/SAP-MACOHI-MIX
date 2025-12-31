/// @description updateSprite() function

function checkForLevelNumber(icon = 0, levels = false, newSprite = spr_debug_levelSelectIcon, lvlName = "") {
	if global.levelSelectIcon == icon and levels then {
		sprite_index = newSprite
		level_name = lvlName
	}
}

function updateSprite()
{
	image_xscale = 2
	image_yscale = 2
	
	sprite_index = spr_debug_levelSelectIcon
	
	sincoLevel = global.levelSelectChar == 0
	portLevel = global.levelSelectChar == 1
	macohiLevel = global.levelSelectChar == 2
	
	checkForLevelNumber(0, sincoLevel, spr_levelSelectChar_sinco, "Osin")
	checkForLevelNumber(0, portLevel, spr_levelSelectChar_portilizen, "String Quest")
	checkForLevelNumber(0, macohiLevel, spr_levelSelectChar_macohi, "Coming Soon")
	

	x = ((window_get_width() / 2) + (sprite_width / 2))
	y = ((window_get_height() / 2) - (sprite_height / 2))
}
