/// @description Insert description here
// You can write your code in this editor


// when there is a collision
lives --;

//DELETE?
with(obj_game) {
	alarm[1] = room_speed;
}

audio_play_sound(snd_die, 1, false);

instance_destroy();

repeat(10){
	instance_create_layer(x, y, "Instances", obj_debris);	
}

//if(obj_ship == false){
	//room_restart();
//	instance_create_layer(room_width/2, room_height/2, "Instances", spr_ship);
//}