extends Area2D

@export var health = 100;
@onready var healthBar =$Health

func _physics_process(delta):
	healthBar.text = "Health: "+ str(health);
	
	if health<=0:
		queue_free()



func _on_body_entered(body):
	if body.is_in_group("wolf"):
		health-=10;
		body.queue_free();
