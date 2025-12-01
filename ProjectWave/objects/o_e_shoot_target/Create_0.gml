// Inherit the parent event
event_inherited();

move_speed = 4;
target_x = 0;
target_y = 0;

o_e_s_cooldown = false;
path = path_add();
path_set_kind(path, 1);
path_set_precision(path, 10);

pathing_timer = 5;
pathing_delay = 5;
alert = false;
