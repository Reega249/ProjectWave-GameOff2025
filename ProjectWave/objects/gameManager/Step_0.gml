if (!beaten_level){
	reset = keyboard_check(ord("P"));

	if (reset) or (oPlayer.p_hp <= 0) {
		game_restart();
	}

	if (!end_level) {
	for (var _i = 0; _i < array_length(ground_layers); _i++)
	{
		// Sets the layer to its position plus the moved distance 
		layer_y(ground_layers[_i], layer_get_y(ground_layers[_i]) + 1);
	
		// Checks if the distance has gone above zero and looped back around
		if (layer_get_y(ground_layers[_i]) >= room_height - view_hport[0])
		{
			// Moves the layer back to where it started starting the loop again
			end_level = true;
		
		}
	}
	spawner_elements = layer_get_all_elements("spawners");

	for (var _i = 0; _i < array_length(spawner_elements); _i++) {
		var _inst = layer_instance_get_instance(spawner_elements[_i]);
		_inst.y++;
		}
	}

	enemy_elements = layer_get_all_elements("Instances");
	if (array_length(enemy_elements) == 1) {
		beaten_level = true;

	}
}
else {
	room_goto(titleScreen);
}
