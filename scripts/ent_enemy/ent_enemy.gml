
function Enemy() : Entity() constructor {

	function start() {
		type = Enemy;
		size.x = 1;
		size.y = 10;
		set_sprite(spr_collision);
	}

	function step() {
		
	}

	function draw() {
		draw_sprite_ext(sprite, 0, pos.x, pos.y, size.x, size.y, 0, c_white , 1);
	}
}