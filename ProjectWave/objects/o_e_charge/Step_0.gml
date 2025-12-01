// Inherit the parent event
// handles the destruction of object when it reaches 0 hp
event_inherited();

// handles pathing
var _dis = distance_to_object(oPlayer);
// check if we've reached a good distance to attack the player
if (_dis <= attack_dis) && (!o_p_reached) {
	o_p_reached = true;
	path_end()
	alarm[1] = attack_speed_timer;
}

var _found_player = false;
if (!o_p_reached) {
	try {
		_found_player = mp_grid_path(global.grid,path,x,y,oPlayer.x,oPlayer.y,true);	
	}
	catch(_exception) {
		//show_debug_message(_exception)
	}

	if _found_player {
		path_start(path,move_speed,path_action_stop,false);
	}
}

// once the charge timer has been reached
if (o_e_attacking) {
	x = x+ (Normalized_vector_x * (move_speed * 3));
	y = y+ (Normalized_vector_y * (move_speed * 3));
}





