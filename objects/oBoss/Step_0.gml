if (global.pause) exit;

/* MOVIMENT AND COLISION */

//set the direction of carachter for the crystal
dir = point_direction(x,y,oPlayer.x, oPlayer.y);
//calculate the velocity horizontal and vertical
velh = lengthdir_x(velc, dir);
velv = lengthdir_y(velc, dir);
//if the character colision of the block created of player
if(place_meeting(x+velh,y, oBlock)){
	while (!place_meeting(x+sign(velh), y, oBlock)){
		x = x + sign(velh);
	}
	velh = 0;
}
if (place_meeting(x, y+velv, oBlock)){
	while (!place_meeting(x, y+sin(velv),oBlock)){
		y = y + sign(velv);
	}
	velv = 0;
}
//set the position
x = x + velh;
y = y + velv;

//in game over
if (global.life == 0){
	exit;
}

//efect of shoot
alpha = lerp(alpha, 0, 0.1);

//Bulle of Boss, on the four diagonals
if(global.bossshoot == true){
	var _bullet1 = instance_create_layer(x, y, "Tiros", oBulletBoss);
	var _bullet2 = instance_create_layer(x, y, "Tiros", oBulletBoss);
	var _bullet3 = instance_create_layer(x, y, "Tiros", oBulletBoss);
	var _bullet4 = instance_create_layer(x, y, "Tiros", oBulletBoss);
	
	_bullet1.speed = 2;
	_bullet1.direction = point_direction(x, y, x+3, y+3);
	
	_bullet2.speed = 2;
	_bullet2.direction = point_direction(x, y, x-3, y+3);
	_bullet2.image_xscale = -1;
	
	_bullet3.speed = 2;
	_bullet3.direction = point_direction(x, y, x-3, y-3);
	_bullet3.image_yscale = -1;
	_bullet3.image_xscale = -1;
	
	_bullet4.speed = 2;
	_bullet4.direction = point_direction(x, y, x+3, y-3);
	_bullet4.image_yscale = -1;
	
	global.bossshoot= false;
	alarm[0] = 60;
}

// block of enemie, created where the player is
if(global.bossblock == true){
	global.bossblock = false;
	x_player = oPlayer.x;
	y_player = oPlayer.y;
	instance_create_layer(x_player, y_player, "Tiros", oBlockSombra);
	alarm[1] = 120;

}























