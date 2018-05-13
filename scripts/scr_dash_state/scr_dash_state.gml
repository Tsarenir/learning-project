len = spd*4

// set speeds
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// movement
phy_position_x += hspd;
phy_position_y += vspd;

// create the dash effect
var dash = instance_create_layer(x,y, "Instances_1", obj_dash_effect)
dash.sprite_index = sprite_index;
dash.image_index = image_index;

