/// @description Insert description here
// You can write your code in this editor
switch(obj_player.active_tool){
	case(tool.Tool):
		draw_sprite(spr_gui_hotbar, 0, 0, 0);
		break;
	case(tool.Weapon1):
		draw_sprite(spr_gui_hotbar, 1, 0, 0);
		break;
	case(tool.Weapon2):
		draw_sprite(spr_gui_hotbar, 2, 0, 0);
		break;
	case(tool.BuildDMG):
		draw_sprite(spr_gui_hotbar, 3, 0, 0);
		break;
	case(tool.BuildSUP):
		draw_sprite(spr_gui_hotbar, 4, 0, 0);
		break;
	case(tool.Demolish):
		draw_sprite(spr_gui_hotbar, 5, 0, 0);
		break;
	
}

draw_sprite(spr_gui_hud_resources, 0, 0, 0);