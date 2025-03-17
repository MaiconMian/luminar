life_enemie--;
instance_destroy(other);
alpha = 1;
if (life_enemie == 0){
	var _n_aleatorio = irandom(100);
	if (_n_aleatorio <= 70)
	{
		instance_create_layer(x, y, "Tiros", oCoin);
	}
	instance_destroy();
}








