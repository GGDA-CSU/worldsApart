extends Node

onready var DSYS = get_node("CanvasLayer/testDia")
func _ready():
	DSYS.show_text("ch1", "d1")
