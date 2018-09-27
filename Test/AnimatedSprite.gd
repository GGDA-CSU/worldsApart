extends AnimatedSprite

var justwarped = false

func _ready():
	connect("animation_finished", self, "on_AnimatedSprite_animation_finished")
	
func on_AnimatedSprite_animation_finished():
	if self.animation == "run":
		animation = "jumpAttack"
	else:
		animation = "run"

#for input handling via polling once per game loop
func _process(delta):
	if Input.is_key_pressed(KEY_LEFT):
		self.position.x -= 1
	if Input.is_key_pressed(KEY_RIGHT):
		self.position.x += 1
	if Input.is_key_pressed(KEY_UP):
		if (Input.is_key_pressed(KEY_SHIFT)):
			self.position.y -= 10
		else:
			self.position.y += 1
			
	#quit
	if Input.is_key_pressed(KEY_Q):
		get_tree().quit()
		
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		self.position = get_viewport().get_mouse_position()

#alternative input upon input event
func _input(event):
	if event is InputEventKey:
		print("Key pressed " + char(event.scancode))
		if(event.echo):
			print("Key was held down!")
		else:
			print("First press")
	if event is InputEventMouseMotion:
		if !justwarped:
			self.translate(event.relative) #move same amount mouse did
		else:
			justwarped = false
			
	if event is InputEventMouseButton:
		match event.button_index:
			BUTTON_LEFT:
				Input.warp_mouse_position(self.position)
				justwarped = true
			BUTTON_RIGHT:
				self.position = Vector2(get_viewport().size.x/2,get_viewport().size.y/2)