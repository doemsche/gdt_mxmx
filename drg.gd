extends TextureFrame

var myId

func init(id):
	myId = id
	self.set_texture(load("res://icon"+str(id)+".png"))
	pass

