/// @description drawTexts

sincoLevel = global.levelSelectChar == 0
portLevel = global.levelSelectChar == 1
macohiLevel = global.levelSelectChar == 2

char_name = ""

if (sincoLevel) char_name = "Sinco"
if (portLevel) char_name = "Portilizen"
if (macohiLevel) char_name = "Macohi"

char_in_level = char_name + " in " + obj_levelSelectIcon.level_name

draw_set_font(font_VCR_32x)
// draw_text(window_get_width() / 2 - ((string_length(char_in_level) * 32) / 2), obj_levelSelectChar.y - 16, char_in_level)