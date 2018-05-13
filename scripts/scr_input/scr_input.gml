up_key = keyboard_check(ord("W"));
left_key = keyboard_check(ord("A"));
down_key = keyboard_check(ord("S"));
right_key = keyboard_check(ord("D"));
dash_key = keyboard_check_pressed(vk_lshift)

// get the input axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);


// check for gamepad input
if (gamepad_is_connected(0)) {
	gamepad_set_axis_deadzone(0, .35);
	xaxis = gamepad_axis_value(0, gp_axislv);
	yaxis = gamepad_axis_value(0, gp_axislv);
}