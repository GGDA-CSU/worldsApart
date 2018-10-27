extends KinematicBody2D

const MOVE_SPEED = 400
const UP = Vector2(0,-1)

func _ready():
	pass

func _physics_process(delta):
	var motion = Vector2()
	if Input.is_action_pressed("ui_left"):
		motion.x = -MOVE_SPEED
	elif Input.is_action_pressed("ui_right"):
		motion.x = MOVE_SPEED
	elif Input.is_action_pressed("ui_up"):
		motion.y = -MOVE_SPEED
	elif Input.is_action_pressed("ui_down"):
		motion.y = MOVE_SPEED
		
	motion = move_and_slide(motion, UP)