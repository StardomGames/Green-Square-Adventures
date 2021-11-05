extends Sprite

var collect = false



func _on_Area2D_body_entered(body):
	if body.get("TYPE") == "player" && collect == false:
		collect = true
		body.speed = 600
		body.jump_speed = -1250
		$anim.play("collect")
		#queue_free()
		
