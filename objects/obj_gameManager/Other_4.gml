/// @description  init room stuffs

if (room == rm_init) then {
	global.custom_savepath_prefix = "../../../../../macohi/SAP_MACOHI_MIX/"
	
	global.levelSelectChar = 0
	global.levelSelectIcon = 0

	show_debug_log(debug_mode)

	openSave()
	if (not ini_section_exists("BACKEND")) then {
		show_debug_message("SAVE DOES NOT EXIST OR IS MISSING BACKEND SECTION")
		resetSave()
	} else {
		show_debug_message("SAVE EXISTS")
		
		saveBackend()
		loadGlobal()
	}
	closeSave()
	
	// show_debug_message("global: " + global)

	room = rm_title
}