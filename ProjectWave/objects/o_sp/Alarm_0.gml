for (var _i = 0; _i < enemy_spawn_amount; _i++) {
	instance_create_layer(x + random_range(-range_spawn, range_spawn),y, "Instances", enemy_spawn);
}