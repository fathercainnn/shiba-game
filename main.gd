extends Node2D

var clicks = 0
var max_clicks = 10
var half_clicks = max_clicks/2
var plusone_scene = preload("res://plus_1.tscn")

@onready var clicks_label = $Label
@onready var egg_sprite = $TextureButton/StartEgg
@export var chipped_egg: Texture2D
@export var cracked_egg: Texture2D 

func on_egg_clicked():
	if clicks < max_clicks:
		clicks += 1
		print("crack-o-meter: " + str(clicks) +  "/" + str(max_clicks))
		clicks_label.text = "crack-o-meter: " + str(clicks) + "/"  + str(max_clicks)
		
		var plusone = plusone_scene.instantiate()
		plusone.position = get_viewport().get_mouse_position() + Vector2(0,-5)
		self.add_child(plusone)
		
		if clicks == half_clicks:
			egg_sprite.texture = chipped_egg
			egg_sprite.scale = Vector2(0.9, 0.9)

		if clicks == max_clicks:
			egg_sprite.texture = cracked_egg
			egg_sprite.scale = Vector2(1, 1)
