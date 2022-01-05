extends KinematicBody2D

var moviment = Vector2.ZERO
var speed = 400
var dirx = 0
var diry = 0
const TIRO = preload("res://Scenes/Tiro.tscn")
onready var tiro = get_node("res://Scenes/Tiro.tscn")


func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	dirx = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	diry = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	
	if dirx > 0:
		$Pos.position.x = 44
	if dirx < 0:
		$Pos.position.x -44
		
	moviment.x = dirx * speed
	moviment.y = diry * speed
	moviment = move_and_slide(moviment, Vector2.UP)
	tiro()

func tiro():
	if Input.is_action_just_pressed("ui_accept"):
		var r = TIRO.instance()
		get_parent().add_child(r)
		r.global_position = $Pos.global_position
