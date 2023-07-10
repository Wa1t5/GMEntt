/// @desc Entity Manager
function EnttManager() constructor {
	/// @desc Entities list
	entities = ds_list_create();
	
	/// @desc Append an entity to our list
	function add_entity(_entity, _layer = "Instances", _parent = noone) {
		
		// Create our generic object
		var _owner = instance_create_layer(_parent.x, _parent.y, _layer, obj_generic, _entity);
		
		// Assign our entity to it
		_entity.owner = _owner;
		
		// Pass spawner arguments
		_owner.pos = new Vector2(_parent.x, _parent.y);
		_owner.size = new Vector2(_parent.image_xscale, _parent.image_yscale);
		
		// Initialize our entity
		with(_owner) _entity.start();
		
		// Append to the list
		ds_list_add(entities, _entity);
	}
	
	/// @desc Destroy an entity and remove it from our list
	function destroy_entity(_entity) {
		ds_list_delete(entities, _entity._id);
		delete _entity;
	}

	/// @desc Update entities, step event
	function update_entities_step() {
		for (var _i = 0; _i < ds_list_size(entities); _i++) {
			with (entities[|_i].owner) {
				step();
				// Sync our instance's properties to the object
				x = pos.x;
				y = pos.y;
				image_xscale = size.x;
				image_yscale = size.y;
			}
		}
	}
	
	/// @desc Update entities, draw event
	function update_entities_draw() {
		for (var _i = 0; _i < ds_list_size(entities); _i++) {
			with (entities[|_i].owner) draw();
		}
	}
}