ground_layers = ["Tiles_1"];
audio_play_sound(ostOne,3,true);
spawner_elements = layer_get_all_elements("spawners");
end_level = false;
beaten_level = false;
global.grid = mp_grid_create(0,0,room_width /32, room_height /32,32,32);