//for never create the block inside of characters or crystal
if place_meeting(x,y, oGhost) || place_meeting(x,y, oPlayer) || place_meeting(x,y, oCrystal) || place_meeting(x,y, oGolen) ||  place_meeting(x,y, oBird) || place_meeting(x,y, oSlime){
	instance_destroy();	
}

alarm[0] = 120;




