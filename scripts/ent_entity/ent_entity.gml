/// @desc Entity
function Entity() constructor
{	
	/// @desc Owner object
	owner = noone;
	
	/// @desc Type
	type = Entity;
	
	/// @desc Initial position
	pos = new Vector2();
	
	/// @desc Initial size
	size = new Vector2(32, 32);
	
	/// @desc Entity sprite
	sprite = -1;
	
	/// @desc Start function
	function start() {}
	
	/// @desc Step function
	function step() {}
	
	/// @desc Draw function
	function draw() {}
	
	/// @desc Set sprite
	function set_sprite(_sprite) {
		//sprite_index = _sprite;
		sprite = _sprite;
		mask_index = _sprite;
	}	
}