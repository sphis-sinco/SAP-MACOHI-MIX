// @description functions

function openSave() {
	show_debug_message("opening save")
	ini_open(global.custom_savepath_prefix + ((debug_mode) ? "debug/" : "release/" ) + "saves/save.ini");
}

function closeSave() {
	show_debug_message("closing save")
	ini_close();
}

function resetSave() {
	show_debug_message("destroying / resetting save")
	ini_section_delete("BACKEND")
	ini_section_delete("GLOBAL")
	
	saveAll()
}

function saveAll() {
	show_debug_message("saving all")
	saveBackend()
	saveGlobal()
}

function saveBackend() {
	show_debug_message("saving BACKEND")
	ini_write_string("BACKEND", "version", GM_version);
	ini_write_real( "BACKEND", "build_date", GM_build_date);
}

function saveGlobal() {
	show_debug_message("saving GLOBAL")
	ini_write_string("GLOBAL", "levelSelectChar", global.levelSelectChar);
}

function loadGlobal() {
	global.levelSelectChar = int64(ini_read_string("GLOBAL", "levelSelectChar", "0"))
}