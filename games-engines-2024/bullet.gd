extends CharacterBody3D

@export var speed:float=20

func _physics_process(delta: float) -> void:
		
		global_position = lerp(global_position, target.global_position)
		look_at(player)
