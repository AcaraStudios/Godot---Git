extends Area2D
var speed = 150
var dir = 1

func _process(delta):
	translate(Vector2(dir * speed, 0) * delta)
