if (global.pause) exit;

var _x_aleatorio;
var _y_aleatorio;

if (troca == 0){
	_x_aleatorio = irandom_range(-30, 0);
	_y_aleatorio = irandom_range(0,180);
} else if (troca == 1){
	_x_aleatorio = irandom_range(320, 340);
	_y_aleatorio = irandom_range(0,180);
} else if (troca == 2){
	_x_aleatorio = irandom_range(0, 320);
	_y_aleatorio = irandom_range(-30, 0);
} else {
	_x_aleatorio = irandom_range(0, 320);
	_y_aleatorio = irandom_range(180,200);
}

//select the enemie randomizes, don't for level
if enemie == 0 {
	instance_create_layer(_x_aleatorio, _y_aleatorio, "Boss", oSlime);
} else if enemie == 1{
	instance_create_layer(_x_aleatorio, _y_aleatorio, "Boss", oBird);
} else if enemie == 2{
	instance_create_layer(_x_aleatorio, _y_aleatorio, "Boss", oGhost);
} else if enemie == 3{
	instance_create_layer(_x_aleatorio, _y_aleatorio, "Boss", oGolen);
} 

troca = irandom(3);
enemie = irandom(3); //randomize the enemie

alarm[0] = valor;





