life_enemie--; // take life from the boss
instance_destroy(other); //destroy the bullett
alpha = 1;

//if the end of game
if (life_enemie == 0){
	instance_destroy();
	room_goto(REnd);
}








