extends CharacterBody2D

@export var speed = 100;

var fortress = null;

func _physics_process(delta):
	if fortress !=null:
		var direction = fortress.global_position - global_position
		look_at(fortress.global_position);
		direction = direction.normalized();
		velocity = speed * direction;
		move_and_slide();

func _on_detection_area_entered(area):
	if(area.is_in_group("fortress")):
		fortress = area;


func _on_hitbox_area_entered(area):
	if(area.is_in_group("fortress")):
		#queuse_free();
		pass
