// Inherit the parent event
// handles destruction of object once hp = 0
event_inherited();
x = clamp(x, 32, room_width-32);
// handles enemy movement
// if the player is in front of the enemy
if (y < oPlayer.y) {
	if (x <= oPlayer.x + 10) && (x >= oPlayer.x - 10) {
		if (!o_e_s_cooldown) && (!o_e_attacking) {
		o_e_attacking = true;
		}
	}
	// checks if the player is in front of the enemy but not to close
	if (y < oPlayer.y = (sprite_height * 0.5 + oPlayer.sprite_height * 0.5)) {
		//target players x position
		target_x = oPlayer.x
		// target ahead of the players y position
		target_y = clamp(max(target_y, oPlayer.y - (sprite_height + oPlayer.sprite_height)), 0, 280);
	}
	else
	{
		// Sets the target x to the left or right of the player as to not crash into them
		target_x = oPlayer.x;
			
		// Checks if the player is far enough away
		if (x > oPlayer.x - (sprite_width * 0.5 + oPlayer.sprite_width * 0.5) * 0.75 && x < oPlayer.x + (sprite_width * 0.5 + oPlayer.sprite_width * 0.5) * 0.75)
		{
			// Targets the current enemy y position from going forward
			target_y = clamp(y, 0, 280);
		}
		else
		{
			// Targets the current player y position from going forward
			target_y = clamp(oPlayer.y, y, 280);
		}
	}
}
else
{
	// Targets the current player y position from going forward
	target_y = clamp(oPlayer.y, y, 280);
	
}

var _found_target = false;

if (pathing_timer <= 0) {
	pathing_timer = pathing_delay;
	try {
		//_found_target = mp_grid_path(global.grid,path,x,y,target_x,oPlayer.y - target_y,true);	
	}
	catch(_exception) {
		//show_debug_message(_exception)
	}

	if _found_target {
		//path_start(path,move_speed,path_action_stop,false);
	}
}
else {
	pathing_timer--;
}

	
if (o_e_attacking) {
	o_e_s_cooldown = true;
	o_e_attacking = false;
	path_speed = 0;
	alarm[1] = attack_speed_timer;
	instance_create_layer(x,y, "Instances", o_e_blast);
}

show_debug_message(target_x);