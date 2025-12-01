///@description physical attack

physical_attack = keyboard_check(ord("E"));

if(physical_attack) && (!phys_attacking) {
	phys_attacking = true;
	sprite_index = player_attack;
	image_index= 0;
}