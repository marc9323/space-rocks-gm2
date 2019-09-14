/// @description Insert description here
// You can write your code in this editor

// destroy the bullet
instance_destroy();

audio_play_sound(snd_die, 1, false);

score += 10;

with(other){  // code applies (with) to bullet, the other instance
	instance_destroy();
	
	if(sprite_index == spr_asteroid_huge){
		// if it's huge, create two med
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_med;
		}
	} else if(sprite_index == spr_asteroid_med) {
		repeat(2){
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_small;
		}
	}
	
	repeat(10){
		var debris = instance_create_layer(x, y, "Instances", obj_debris);
		
	}
}
