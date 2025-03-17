//set the up or down in the menu
if (keyboard_check_pressed(vk_down) || (keyboard_check_pressed(ord("S")))){
	OpSelect++;
	if (OpSelect > 2){
		OpSelect = 0;	
	}
}
if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) ){
	OpSelect--;
	if (OpSelect < 0){
		OpSelect = 2;	
	}
}

//select the option
if (OpSelect == 0 && keyboard_check_pressed(vk_enter)){
	room_goto(RCinematic01);
}

if (OpSelect == 1 && keyboard_check_pressed(vk_enter)){
	room_goto(RRunner);
}

if (OpSelect == 2 && keyboard_check_pressed(vk_enter)){
	game_end();
}










