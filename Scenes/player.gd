extends Node2D
var moviment = Vector2.ZERO
var speed = 50
var dir = 0

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	dir = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	moviment.x = dir * speed
	moviment = move_and_slide(moviment, Vector2.UP)
