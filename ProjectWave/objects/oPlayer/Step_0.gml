var up, down, left, right, shoot;
// holds the player within the view of the viewport
x = clamp(x, 32, room_width-32);
y = clamp(y, camera_get_view_y(view_camera[0]), camera_get_view_y(view_camera[0]) + 540);
show_debug_message(camera_get_view_y(view_camera[0]));

// functions that determine if the player is moving
up =   keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
shoot = keyboard_check(ord("R"));

// moves the player depending on which buttons are being pressed
if up {
	y -= move_speed;
}

if down {
	y += move_speed;
}

if left {
	x -= move_speed;
}

if right {
	x += move_speed;	
}

// determines if the player can shoot
if shoot && can_shoot {
	can_shoot = false;
	alarm[0] = cooldown;
	instance_create_layer(x,y, "Instances", oBlast);
}