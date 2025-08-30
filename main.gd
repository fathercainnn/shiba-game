extends Node2D

var clicks = 0
var max_clicks = 5

@onready var clicks_label = $Label
@onready var egg_sprite = $TextureButton/Egg
@export var cracked_egg = Texture2D 

func on_egg_clicked():
	if clicks < max_clicks:
		clicks += 1
		print("clicks = " + str(clicks) +  "/" + str(max_clicks))
		clicks_label.text = "clicks: " + str(clicks) + "/"  + str(max_clicks)

		if clicks == max_clicks:
			egg_sprite.texture = cracked_egg
			egg_sprite.scale = Vector2(1.5, 1.5)
