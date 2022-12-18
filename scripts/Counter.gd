extends Label


# Declare member variables here. Examples:

var point = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	text = String(point)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_pin_pinDown():
	point = point+1
	_ready()
	if point == 19:
		get_tree().change_scene("res://assets/victory.tscn")
