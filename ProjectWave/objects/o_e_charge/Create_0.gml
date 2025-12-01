// Inherit the parent event
// handles the hp, attack timer, attack distance and the hit boolean
event_inherited();

attack_dis = 240;
// handle pathing
path = path_add()
move_speed = 3;

// handles attacking
o_p_reached = false;

// vectors for attacking
vector_x = 0;
vector_y = 0;


