/* MOVIMENT AND COLISION */
if (global.pause) exit;
//set the direction of carachter for the crystal
dir = point_direction(x,y,oCrystal.x, oCrystal.y);
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

if (global.life == 0){
	exit;
}

alpha = lerp(alpha, 0, 0.1);
















