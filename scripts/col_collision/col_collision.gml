//// @desc Collision
function Collision() : Entity() constructor {
	function start() {
		type = Collision;
		set_sprite(spr_collision);
	}
	
	function draw() {
		draw_sprite(sprite, 0, pos.x, pos.y);
	}
}