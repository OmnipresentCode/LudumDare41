
image_angle = direction - 90; //Our images are drawn to the with cars facing north to south so subtract 90 degrees to adjust for this


if(!place_free(x + hspeed, y + vspeed)){
	if(speed > 0) move_contact_solid(direction, speed);
	if(speed < 0) move_contact_solid(direction - 180, - speed);
	speed = 0;
}