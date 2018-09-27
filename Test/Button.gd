extends Button

func _ready():
	pass


func _on_Button_pressed():
	self.text = "Clicked!"
	
func _on_Button_mouse_entered():
	self.add_color_override("font_color_hover", Color(0,0,0))
