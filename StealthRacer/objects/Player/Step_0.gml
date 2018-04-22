//Movement

//if(speed != 0){
	if(keyboard_check(ord(turnRight))) direction -= turnSpeed;
	if(keyboard_check(ord(turnLeft))) direction += turnSpeed;
//}


if(keyboard_check(ord(accelerator))){
	speed += accel;
	if(speed > maxSpeed) speed = maxSpeed;
	
}

if(keyboard_check(ord(brake))){
	if(speed > 0) speed -= brakeSpeed;
	else {
		speed -= accel;
		if(speed < minSpeed) speed = minSpeed;
	}
}

event_inherited();