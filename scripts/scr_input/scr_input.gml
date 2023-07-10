/// @desc Input Manager
function InputManager() constructor {
	
	function is_action_pressed(_action) {
		if (_action.type == KEY_TYPE.KEYBOARD) return keyboard_check_pressed(_action.key);
	}
	
	function is_action_released(_action) {
		if (_action.type == KEY_TYPE.KEYBOARD) return keyboard_check_released(_action.key);
	}
	
	function is_action_down(_action) {
		if (_action.type == KEY_TYPE.KEYBOARD) return keyboard_check(_action.key);
	}
}

enum KEY_TYPE {MOUSE, KEYBOARD, GAMEPAD}
function InputAction(_name, _key, _type) constructor {
	name = _name;
	key = _key;
	type = _type;
}