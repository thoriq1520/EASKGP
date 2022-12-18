extends Spatial

signal pinDown
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_pin_body_entered(body):
	if body.name == "Bowling":
		$AnimationPlayer.play("pinDown")
		$Timer.start()


func _on_Timer_timeout():
	emit_signal("pinDown")
	queue_free()
