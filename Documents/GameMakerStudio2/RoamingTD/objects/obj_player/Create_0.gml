/// @description initialize player

//movement numbers
maxspeed = 4;
accel = 1.8;
drag = .8;

//
//camera vals for zooming in and out
cameraXScale = 0
cameraYScale = 0

//hotbar current player actions
enum tool{
	Tool,
	Weapon1,
	Weapon2,
	BuildDMG,
	BuildSUP,
	Demolish
}

active_tool = tool.Tool

aimDirection = point_direction(x,y,mouse_x,mouse_y);

