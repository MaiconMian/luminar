//if the enemie colision of crystal, is the end of game
instance_create_layer(0, 0, "HUD", oGameOver);
instance_destroy();
global.pause = true;
global.life = 0;
