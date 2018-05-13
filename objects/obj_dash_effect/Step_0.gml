/// @description fade
// You can write your code in this editor
if (image_alpha > 0) {
	image_alpha -= .1;
} else {
	instance_destroy();
}
test = test