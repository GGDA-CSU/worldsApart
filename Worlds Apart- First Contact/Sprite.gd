extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	pass

func _process(delta):
	if Input.is_key_pressed(KEY_A):
		self.position.x -= 1
		
	if Input.is_key_pressed(KEY_D):
		self.position.x += 1
		
	if Input.is_key_pressed(KEY_W):
		self.position.y -= 1
		
	if Input.is_key_pressed(KEY_S):
		self.position.y += 1