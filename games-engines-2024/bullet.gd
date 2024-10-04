extends CharacterBody3D

@export var speed:float=20


func _physics_process(delta: float) -> void:
	
	var v = global_transform.basis.z
	move_and_collide(v * speed * delta)


func _on_timer_timeout() -> void:
	var explosions = $Explosion
	
	explosions.emitting = true
	await get_tree().create_timer(explosions.lifetime).timeout
	
	queue_free()
