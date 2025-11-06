var up, down, left, right, shoot;
x = clamp(x, 16, room_width-16);
y = clamp(y, view_hport[0], view_hport[0]+492);
up =   keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right =keyboard_check(vk_right);
shoot =keyboard_check(ord("R"));

if up {
	y -= 4;
}

if down {
	y += 4;
}

if left {
	x -= 4;
}

if right {
	x += 4;	
}

if shoot && can_shoot {
	can_shoot = false;
	alarm[0] = cooldown;
	instance_create_layer(x,y, "Instances", oBlast);
}