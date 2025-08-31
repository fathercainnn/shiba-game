extends Node2D

var time_existing = 0

func _process(delta: float):
	self.position.y -= 1
	time_existing += delta 
	self.modulate.a -=0.02
	
	if time_existing > 0.6:
		self.queue_free()
