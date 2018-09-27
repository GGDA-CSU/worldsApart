extends Node

const pi = 3.14 #globals
export var radius = 2 #adds to editor

export(Texture) var myImage #adds an option for texturing in the editor
#ctrl-k to mass comment/uncomment
func _ready():
	get_tree().change_scene("UIScene.tscn")
	var a = 1 #Int(1) for specification
	var b = 2.1
	var c = "three"
	var d = Vector2(1,0)
	var e = String(b) + c
	print(e)
	
	var area = pi * radius
	print(area)
	
	var arr = []
	arr = [1,2.1,"Jimbo",4]
	for i in arr:
		print(i)
		
	#dictionaries
	var monster = {}
	monster["Name"] = "Orc"
	monster = {
		"Orc" : {
			"HP": 42,
			"Alignment": "Chaotic Neutral"
				},
		"Elf" : {
			"HP": 28,
			"Alignment": "Lawful Good"
				}
			}
	print(monster.Elf.HP)
	
	#Conditions
	if(monster.Elf.HP < 5):
		print("Elf needs food")
	elif(monster.Elf.HP < 10):
		print("Elf would like some food.")
	else:
		print("Elf isn't hungry.")
		
	#Alternative conditions
	match GameGlobals.meaningOfLife: #variable from the global vars file
		1: print("Value is one")
		2,3,4,5: print("Between 2 and 5")
		6: print("It's 6.")
		_: print("Default")