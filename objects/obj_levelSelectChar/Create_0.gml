/// @description updateSprite() function

function updateSprite()
{
	image_xscale = 2
	image_yscale = 2
	
	sprite_index = spr_debug_levelSelectChar

	if (global.levelSelectChar == 0) then {
		sprite_index = spr_levelSelectChar_sinco
	}
	if (global.levelSelectChar == 1) then {
		sprite_index = spr_levelSelectChar_portilizen
	}
	if (global.levelSelectChar == 2) then {
		sprite_index = spr_levelSelectChar_macohi
	}

	x = ((window_get_width() / 2) - (sprite_width / 0.75))
	y = ((window_get_height() / 2) - (sprite_height / 2))
}
