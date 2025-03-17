/* MOVIMENT AND COLISION*/

if (global.pause) exit;
//variables for take the keyboard press
var _tecla_cima = keyboard_check(ord("W")) || keyboard_check(vk_up);
var _tecla_baixo = keyboard_check(ord("S")) || keyboard_check(vk_down);
var _tecla_direita = keyboard_check(ord("D")) || keyboard_check(vk_right);
var _tecla_esquerda = keyboard_check(ord("A")) || keyboard_check(vk_left);
var bullet = mouse_check_button_pressed(mb_left);
var block = mouse_check_button_pressed(mb_right);
var tecla = _tecla_direita - _tecla_esquerda != 0 || _tecla_baixo - _tecla_cima != 0
//set the direction of the chatacter
dir = point_direction(0,0,_tecla_direita - _tecla_esquerda,_tecla_baixo - _tecla_cima);
//set the velocity of character 
velh = lengthdir_x(velc * tecla, dir);
velv = lengthdir_y(velc * tecla, dir);
//set the colision
if(place_meeting(x+velh,y, oColision)){
	while (!place_meeting(x+sign(velh), y, oColision)){
		x = x + sign(velh);
	}
	velh = 0;
}
if (place_meeting(x, y+velv, oColision)){
	while (!place_meeting(x, y+sin(velv), oColision)){
		y = y + sign(velv);
	}
	velv = 0;
}
//set the final position
y = y + velv;
x = x + velh;

//animation of charater 
if (mouse_y < (y-60)){
	sprite_index = sCostas;
} else {
	sprite_index = sPlayer;
	if (mouse_x > x){
		image_xscale = -1;
	}else{
		image_xscale = 1;
	}
}

/* BULLET AND BLOCK */
if(bullet && global.canshoot == true){
	var _bullet = instance_create_layer(x, y, "Tiros", oBullet);
	_bullet.speed = 10;
	_bullet.direction = point_direction(x, y, mouse_x, mouse_y);
	oPlayBullet.image_alpha = 0.3;
	global.canshoot = false;
	alarm[0] = 20;
	audio_play_sound(sound_Shoot, 2, false);
}

if (block && global.canblock == true) {
        var _block = instance_create_layer(mouse_x, mouse_y, "Tiros", oBlock);
        global.canblock = false;
		oPlayBlock.image_alpha = 0.3;
        alarm[1] = 60;
}

if global.canlife && (place_meeting(x,y,oGhost) || place_meeting(x,y,oGolen) || place_meeting(x,y,oSlime) || place_meeting(x,y,oBoss) || place_meeting(x,y,oBird) || place_meeting(x,y,oBulletBoss) || place_meeting(x,y,oBlockEnemie))
{
	global.life--;
	global.canlife = false;
	alpha = 1;
	alarm[2] = 20;
}

//the blur of the character 
if (place_meeting(x,y, oBLur) && (global.level != 5)){
	oCrystal.image_alpha = 0.5;	
	oPlayer.image_alpha = 0.5;
} else if (global.level != 5){
	oCrystal.image_alpha = 1;	
	oPlayer.image_alpha = 1;
}

if (global.life == 0){
	instance_create_layer(0, 0, "HUD", oGameOver);
	global.pause = true;
}

alpha = lerp(alpha, 0, 0.1);

