///@description Controller

// holds the player within the view of the viewport
x = clamp(x, 32, room_width-32);
y = clamp(y, camera_get_view_y(view_camera[0]), camera_get_view_y(view_camera[0]) + 540);

// functions that determine if the player is moving
up =   keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
shoot = keyboard_check(ord("R"));
// controls for diagonal movement
h_move = right - left;
v_move = down - up;
diag = (up || down) && (left || right);

// calculate the acceleration
accel_x = (max_speed - abs(move_speed_x)) / 10;
accel_y = (max_speed - abs(move_speed_y)) / 10;

// horizontal movement
if (h_move != 0) {
	if (diag) {
		move_speed_x += (h_move / 2) * accel_x;
	}
	else {
		move_speed_x += h_move * accel_x;
	}
} 
else {
	move_speed_x = lerp(move_speed_x, 0, friction_);
	
}
// vertical movement
if (v_move != 0) {
	if (diag) {
		move_speed_y += (v_move / 2) * accel_y;
		
	}
	else {
		move_speed_y += v_move * accel_y;
	}
	
} 
else {
	move_speed_y = lerp(move_speed_y, 0, friction_);
}

movement_x = move_speed_x;
movement_y = move_speed_y;

// Movement Calculations
// when a button is pressed force is applied to the object.
momentum_x = movement_x;
momentum_y = movement_y;

x += momentum_x;
y += momentum_y;

// determines if the player can shoot
if shoot && can_shoot {
	can_shoot = false;
	alarm[0] = cooldown;
	instance_create_layer(x,y, "Instances", oBlast);
}