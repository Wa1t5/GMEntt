
function Player() : Entity() constructor {
	
	// Keys
	right = noone;
	left = noone;
	axis = noone;

	function _input() {
		axis = global.input_manager.is_action_down(right) - global.input_manager.is_action_down(left);
	}

	function start() {
		type = Player;
		set_sprite(spr_player);
		
		// Keys
		right = new InputAction("right", ord("D"), KEY_TYPE.KEYBOARD);
		left = new InputAction("left", ord("A"), KEY_TYPE.KEYBOARD);
		axis = -1;
	}

	function step() {
		_input();
		var _col = instance_place(x, y, obj_generic);
		if (bool(_col)) {
			var _type = _col.type;
			if (_type == Enemy) show_debug_message("Colliding with enemy: " + string(_col));
		}
		pos.x += axis * 20;
	}

	function draw() {
		draw_sprite(sprite, 0, pos.x, pos.y);
	}
}