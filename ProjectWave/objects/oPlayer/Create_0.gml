can_shoot = true;
cooldown = 10;
// variables for calculating momentum because I am insane
movement_x = 0;
movement_y= 0;
// move_speed is our current velocity
move_speed_x = 0;
move_speed_y =0;
// max_speed is our final velocity
max_speed = 6;
// acceleration starts at 0
accel_x = 0;
accel_y = 0;
// change over time
_delta_time = 2;
friction_ = 0.3;
//velo_x = 0;
//velo_y = 0;
//momentum_x = 0;
//momentum_y =0;
mass = 1.5;
_delta_time = 1;

// variables for handling health
p_hp = 10;

var up, down, left, right, shoot, diag, h_move, v_move;