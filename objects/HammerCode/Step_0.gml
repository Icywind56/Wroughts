/// @description Frame data


image_xscale = size;
image_yscale = size;
if(size <= 0.75){ image_index = 1; }

#region //movement
if(charge){
	chargeCounter++;
	if(chargeCounter == 120){
		charge = false;
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
		speed = 45;
		chargeCounter=0;
	}
}
else if(!attacking){
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = 15;
	attacking = true;
}

else if(attacking){
	if !collision_ellipse(0+sprite_width,0+sprite_height,room_width-sprite_width,room_height-sprite_height,self,true,false){
		r = irandom_range(0,100)
		if(r < 10){
			charge = true;
			speed = 0;
		}
		else attacking = false;
	}
}
#endregion
