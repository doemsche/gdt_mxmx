extends Panel
var vcs = [Vector2(0,0), Vector2(0,100), Vector2(0,200)]
var Libel = load("res://LibraryElement.tscn") #
var Mxmxel = load("res://MxmxElement.tscn")
func _ready():
	var r = get_viewport().get_visible_rect()
	self.set_size(Vector2(r.size.x, r.size.y))
	buildLib()
	pass


func buildLib():
	var i = 0
	for v in vcs:
		i+= 1
		var node = Libel.instance()
		node.init(i)
		node.set_pos(v)
		self.add_child(node)
	pass
	
func can_drop_data(p,v):
	return true

func drop_data(p, v):
	var node = Mxmxel.instance()
	node.set_pos(p)
	self.add_child(node)
	pass
