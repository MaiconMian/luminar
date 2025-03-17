draw_set_font(FStart);
draw_set_color(c_white);

cor= make_colour_rgb(27, 93, 98);

//create in screen the options
for (var i = 0; i < 3; i++){
	if OpSelect == i {
		draw_set_color(c_white);	
	} else {
		draw_set_color(cor);
	}
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(162.5, 80 + (18 * i), OpGame[i]);
}

draw_set_color(-1);
draw_set_font(-1);












