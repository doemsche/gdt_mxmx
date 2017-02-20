extends Control

func _ready():
	self.set_process_input(true)
	pass

func init(id):
	print("passed id")
	print(id)
	pass

func _input_event(ev):
	if(ev.type == InputEvent.MOUSE_BUTTON and ev.button_index == 1 and ev.is_pressed() and !ev.is_echo()):
		var root = get_tree().get_root().get_child(0)
		root.set_active(self)
	pass