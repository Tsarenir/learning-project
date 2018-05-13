scr_input();

if (dash_key) {
	state = scr_dash_state;
	alarm[0] = room_speed / 6
}

// convert the input axis direction to a physical point on the grid
dir = point_direction(0, 0, xaxis, yaxis);

//get the length
if (xaxis == 0 and yaxis == 0) {
	len = 0;
} else {
	len = spd;
}

// set speeds
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// movement
phy_position_x += hspd;
phy_position_y += vspd;

// control the sprite
image_speed = .5;
if (len == 0) { image_index = 0;
}

// vertical sprites
if (vspd > 0) {
	sprite_index = spr_playerdown;
} else if (vspd <0) {
	sprite_index = spr_playerup;
}

// horizontal sprites
if (hspd > 0) {
	sprite_index = spr_playerright;
} else if (hspd < 0) {
	sprite_index = spr_playerleft;
}