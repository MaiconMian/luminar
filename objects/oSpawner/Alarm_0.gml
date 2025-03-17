// if the game is paused, exit
if (global.pause) exit;

//the positions of created the enemie
var _x_aleatorio;
var _y_aleatorio;


//select one of the four corners of the screen and randomizes a position in place
if (swap == 0){
	_x_aleatorio = irandom_range(-30, 0);
	_y_aleatorio = irandom_range(0,180);
} else if (swap == 1){
	_x_aleatorio = irandom_range(320, 340);
	_y_aleatorio = irandom_range(0,180);
} else if (swap == 2){
	_x_aleatorio = irandom_range(0, 320);
	_y_aleatorio = irandom_range(-30, 0);
} else {
	_x_aleatorio = irandom_range(0, 320);
	_y_aleatorio = irandom_range(180,200);
}

//select the caracter create for the level
if global.coins < 20 {
	instance_create_layer(_x_aleatorio, _y_aleatorio, "Boss", oSlime);
} else if global.coins >= 20 && global.coins < 40{
	instance_create_layer(_x_aleatorio, _y_aleatorio, "Boss", oBird);
} else if global.coins >= 40 && global.coins < 60{
	instance_create_layer(_x_aleatorio, _y_aleatorio, "Boss", oGhost);
} else if global.coins >= 60 && global.coins < 80{
	instance_create_layer(_x_aleatorio, _y_aleatorio, "Boss", oGolen);
} else {
	exit;
}

//randomizes a new corner os screen
swap = irandom(3);
alarm[0] = time_enemie;





