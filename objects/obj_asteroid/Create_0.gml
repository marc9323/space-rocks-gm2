/// @description Insert description here
// You can write your code in this editor

// choose a random sprite from list
sprite_index = choose(
	spr_asteroid_small,
	spr_asteroid_med,
	spr_asteroid_huge
);

// choose a random direction
direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

speed = 1;

