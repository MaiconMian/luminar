draw_self();
//efect of the bullet in enemie
if (alpha > 0)
{
	gpu_set_fog(true, color, 0, 0);
	draw_sprite_ext(sprite_index, image_index,x, y,1, 1, 0, c_white, alpha);
	gpu_set_fog(false, color, 0, 0);
}











