extends Sprite


func _on_Area2D_body_entered(body):
	if body.get("TYPE") == "player":
		body.gravity = -4000
		self.queue_free()
		
		
