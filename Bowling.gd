extends KinematicBody

const Speed = 8
var velocity = Vector3(0,0,0)

func _ready():
	pass

func _physics_process(delta):
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_left"):
		velocity.x = 0
	elif Input.is_action_pressed("ui_right"):
		velocity.x = Speed 
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -Speed
	else:
		velocity.x = lerp(velocity.x,0,0.1)
	
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_down"):
		velocity.z = 0
	elif Input.is_action_pressed("ui_up"):
		velocity.z = -Speed
	elif Input.is_action_pressed("ui_down"):
		velocity.z = Speed
	else:
		velocity.z = lerp(velocity.z,0,0.1)
	
	move_and_slide(velocity)
		
