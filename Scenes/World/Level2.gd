extends Node2D

func _ready():
	if $music.playing == false:
		$music.play()


func _on_AcceptDialog_confirmed():
	get_tree().quit()
