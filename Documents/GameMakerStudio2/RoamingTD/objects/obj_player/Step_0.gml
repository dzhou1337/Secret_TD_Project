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
		active_tool = tool.Tool
		break;
		
	case ord("2"):
		active_tool = tool.Weapon1
		break;
		
	case ord("3"):
		active_tool = tool.Weapon2
		break;
		
	case ord("4"):
		active_tool = tool.BuildDMG
		break;
		
	case ord("5"):
		active_tool = tool.BuildSUP
		break;
		
	case ord("6"):
		active_tool = tool.Demolish
		break;
}

//mouse inputs
if(mouse_check_button_pressed(mb_left)){
	switch(active_tool){
		case tool.Tool:
			break;
			
		case tool.Weapon1:
			break;
			
		case tool.Weapon2:
			break;
			
		case tool.BuildDMG:
			instance_create_layer(mouse_x, mouse_y, "Instances", obj_turret_0)
			break;
		
		case tool.BuildSUP:
			break;
			
		case tool.Demolish:
			break;
	}
}

if(mouse_wheel_up()){
	cameraXScale = min(cameraXScale + 64, 640)
	cameraYScale = min(cameraYScale + 36, 360)
	
} else if (mouse_wheel_down()){
	cameraXScale = max(cameraXScale - 64, -640)
	cameraYScale = max(cameraYScale - 36, -360)
}

//better camera tracking
cameraX = x - 640;
cameraY = y - 360;

mouseToPlayerX = mouse_x - x;
mouseToPlayerY = mouse_y - y;

cameraX += mouseToPlayerX*.1;
cameraY += mouseToPlayerY*.1;


camera_set_view_size(view_camera[0], 1280 + cameraXScale, 720 + cameraYScale)
camera_set_view_pos(view_camera[0], cameraX - cameraXScale/2 , cameraY - cameraYScale/2);
aimDirection = point_direction(x,y,mouse_x,mouse_y);






