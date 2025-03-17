draw_set_font(fGui);

// Set the Heart for the carachter in the HUD
if (global.life == 3){
	draw_sprite(sLife, 0, 5, 5);
}

if (global.life == 2){
	draw_sprite(sLife, 1, 5, 5);
}

if (global.life == 1){
	draw_sprite(sLife, 2, 5, 5);
}

if (global.life == 0){
	draw_sprite(sLife, 3, 5, 5);
}

//set the text for the level and coins
if (!global.pause && !global.runner){
	draw_text(22, 18, string(global.coins));
	if (global.level == 5){
		draw_text(290, 166, "BOSS");
	} else {
		draw_text(310, 166, string(global.level));
	}
} 

//in the runner, don't exist level and coins, instead of this, exist the number of enemies dead
if (global.runner){
	draw_text(13, 18, string(global.n_enemies));
}

draw_sprite(sMouse, 0, mouse_x, mouse_y);






