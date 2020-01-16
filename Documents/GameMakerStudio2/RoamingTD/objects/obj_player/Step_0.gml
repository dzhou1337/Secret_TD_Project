/// @description reading input and performing persistent actions

//acceleration based movement
if(keyboard_check(ord("W"))){
	vspeed -= accel;
}

if(keyboard_check(ord("A"))){
	hspeed -= accel;
}

if(keyboard_check(ord("S"))){
	vspeed += accel;
}

if(keyboard_check(ord("D"))){
	hspeed +=  accel;
}

//friction
if (speed > 0){
	speed -= drag;
	speed = max(speed, 0);
} else  if (speed < 0){
	speed += drag;
	speed = min(speed, 0);
}
//caps movement speed at maxspeed
speed = min(speed, maxspeed);

//better wall collision
if(place_meeting(x+hspeed,y,obj_wall)){
	while(!place_meeting(x+sign(hspeed), y, obj_wall)){
		x = x + sign(hspeed);
	}
	hspeed = 0;
}
if(place_meeting(x,y+vspeed,obj_wall)){
	while(!place_meeting(x, y+sign(vspeed), obj_wall)){
		y = y + sign(vspeed);
	}
	vspeed = 0;
}

//non-movement keyboard inputs
switch (keyboard_key) {
	case ord("1"):
		active_tool = tool.Build
		break;
	case ord("2"):
		active_tool = tool.None
		break;
}

//mouse inputs
if(mouse_check_button_pressed(mb_left)){
	switch(active_tool){
		case tool.None:
			break;
			
		case tool.Build:
			instance_create_layer(mouse_x, mouse_y, "Instances", obj_turret_0)
			break;
			
		case tool.Weapon_1:
			break;
	}
}


//better camera tracking
cameraX = x - 400;
cameraY = y - 300;

mouseToPlayerX = mouse_x - x;
mouseToPlayerY = mouse_y - y;

cameraX += mouseToPlayerX*.1;
cameraY += mouseToPlayerY*.1;

camera_set_view_pos(view_camera[0], cameraX , cameraY);
aimDirection = point_direction(x,y,mouse_x,mouse_y);




