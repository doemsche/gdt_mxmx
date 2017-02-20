extends Control

var myId

func init(id):
	myId = id
	self.get_child(0).set_texture(load("res://icon"+str(myId)+".png"))
	pass

func _ready():
	pass

func get_drag_data(pos):
	var icon = load("res://drg.tscn").instance()
	icon.init(myId)
	set_drag_preview(icon)

	return icon
	pass

