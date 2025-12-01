var hit = collision_circle(x,y,o_w_expanding_radius,oPlayer,false,true);

if (hit != noone) {
	if (oPlayer.phys_attacking) {
		audio_play_sound(breakEffect,1,false);
		oPlayer.image_blend = c_green;
		oPlayer.p_hp++;
		oPlayer.alarm[1] = 5;
		instance_destroy()
	}
	else {
		audio_play_sound(waveEffect,1,false);
		oPlayer.p_hp--;
		oPlayer.image_blend = c_red;
		oPlayer.alarm[1] = 5;
		instance_destroy();
	}
}