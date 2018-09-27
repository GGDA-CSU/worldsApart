extends Sprite
func _ready():
	position = Vector2(get_viewport().size.x/2, get_viewport().size.y/2) #Position
	scale = Vector2(0.3,0.3) #Size
	
	rotate(deg2rad(90)) #rotation
	
	set_process(true)
	
func _process(delta):
	rotation = self.rotation + deg2rad(90 * delta) #Delta = dynamic fps-based variable
	translate(Vector2(-100 * delta, 0)) #move left 100px per second
	if (position.x < 0):
		position = Vector2(get_viewport().size.x/2, get_viewport().size.y/2)