// Inherit the parent event
event_inherited();

move_speed = 3;
target_x = 0;
target_y = 0;
attack_speed_timer = 30;
o_e_s_cooldown = false;
path = path_add();
path_start(p_shoot_path,move_speed,path_action_restart,false);
pathing_timer = 5;
pathing_delay = 5;
