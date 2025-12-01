//first calculate vector x and y
vector_x = oPlayer.x - x;
vector_y = oPlayer.y - y;

//Calculate the magnitude
Vector_magnitude = sqrt((vector_x * vector_x)+(vector_y * vector_y))
//the move speed is equal to the normalized vector value
Normalized_vector_x = vector_x/Vector_magnitude
Normalized_vector_y = vector_y/Vector_magnitude

o_e_attacking = true;