extends Sprite



	
func _on_Area2D_body_shape_entered(body_id, body, body_shape, local_shape):
	if body.get("TYPE") == "player":
		body.dead()
func _ready():
	if $movement.is_playing() == false:
		$movement.play("move")
		



func _on_movement_animation_finished(anim_name):
	$movement.play("move")




func _on_Area2D2_body_shape_entered(body_id, body, body_shape, local_shape):
	if body.get("TYPE") == "player":
		body.boss_dead("res://Scenes/Level_7.tscn")
		body.speed = 0
		body.gravity = 0
		
		queue_free()
