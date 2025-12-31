/// @description inputs

sincoLevel = global.levelSelectChar == 0
portLevel = global.levelSelectChar == 1
macohiLevel = global.levelSelectChar == 2

function checkFor2KeysReleased(key1, key2)
{
	return keyboard_check_released(key1) or keyboard_check_released(key2)
}

shift = keyboard_check_direct(vk_shift)

if (checkFor2KeysReleased(vk_up, ord("W"))) then {
	if (shift) then {
		global.levelSelectChar -= 1
		if (global.levelSelectChar < 0) then
			global.levelSelectChar = 0
			
		// show_debug_message("level select char (up): " + string(global.levelSelectChar))
	} else {
		global.levelSelectIcon -= 1
		if (global.levelSelectIcon < 0) then
			global.levelSelectIcon = 0
			
		// show_debug_message("level select icon (up): " + string(global.levelSelectIcon))
	}
	
	obj_levelSelectIcon.updateSprite()
	obj_levelSelectChar.updateSprite()
}

max_levels = 0

if sincoLevel then max_levels = 0
if portLevel then max_levels = 0
if macohiLevel then max_levels = 0

if (checkFor2KeysReleased(vk_down, ord("S"))) then {
	if (shift) then {
		global.levelSelectChar += 1
		if (global.levelSelectChar > 2) then
			global.levelSelectChar = 2
			
		// show_debug_message("level select char (down): " + string(global.levelSelectChar))
	} else {
		global.levelSelectIcon += 1
		if (global.levelSelectIcon > max_levels) then
			global.levelSelectIcon = max_levels
			
		// show_debug_message("level select icon (down): " + string(global.levelSelectIcon))
	}
	
	obj_levelSelectIcon.updateSprite()
	obj_levelSelectChar.updateSprite()
}