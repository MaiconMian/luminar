life_enemie--;
instance_destroy(other);
alpha = 1;

//if the life of enemie is in the end
if (life_enemie == 0 ){
	global.n_enemies++;
	instance_destroy();
	//if the mode of game is not the runner mode 
	if (!global.runner){
		var _n_aleatorio = irandom(100);
		if (_n_aleatorio <= 70){
			instance_create_layer(x, y, "Tiros", oCoin);
		}
	}
	
} 










