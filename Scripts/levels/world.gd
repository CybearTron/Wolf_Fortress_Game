extends Node2D

@export var wolf_scene:PackedScene


func _on_wolf_timer_timeout():
	randomize();
	
	var wolf = wolf_scene.instantiate();
	
	var wolf_location = $WolfPath/WolfPathFollow
	wolf_location.progress_ratio = randf();
	
	wolf.position = wolf_location.position;
	add_child(wolf)
