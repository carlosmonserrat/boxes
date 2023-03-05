extends KinematicBody2D
 
const SPEED = 200
const ROTATION_SPEED = 4

var velocity = Vector2.ZERO

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()

	if input_vector != Vector2.ZERO:
		rotation = input_vector.angle()

	velocity = input_vector * SPEED
	var motion = velocity * delta
	move_and_collide(motion)
