/// @description initialize player

//movement numbers
maxspeed = 4;
accel = 1.8;
drag = .8;

//hotbar current player actions
enum tool{
	Build,
	Weapon_1,
	None	
}

active_tool = tool.None

aimDirection = point_direction(x,y,mouse_x,mouse_y);

