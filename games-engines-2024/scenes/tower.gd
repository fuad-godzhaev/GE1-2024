extends Node3D

var radius = 5
var bricks = 5
var height = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var scene = load("res://scenes/brick.tscn.tscn")
	var f = Input.get("left_click")
	var instance = scene.instantiate()
	if Input.is_action_just_pressed("left_click"):
		add_child(instance)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
