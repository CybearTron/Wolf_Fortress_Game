extends Area2D

@export var speed = 100;

var fortress = null;

func _physics_process(delta):
	if fortress !=null:
		var direction = fortress.global_position - global_position
		direction = direction.normalized();
		global_position = speed * direction;


func _on_detection_area_entered(area):
	if(area.is_in_group("fortress")):
		fortress = area;
