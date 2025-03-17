//set the different levels for the coins
if (global.coins == 20){
	global.level = 2;
	oSpawner.time_enemie = 100;
} else if (global.coins == 40) {
	global.level = 3;
	oSpawner.time_enemie = 140;
} else if (global.coins == 60){
	global.level = 4;
	oSpawner.time_enemie = 180;
} else if (global.coins == 80){
	room_goto(RCinematic02);
}

//back to the start
if (keyboard_check(vk_escape))
{
	room_goto(RScreenStart);
}








