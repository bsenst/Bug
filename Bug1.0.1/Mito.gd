extends Area2D

onready var ui = get_node("/root/MainScene/UI")

func _on_Mito_body_entered(body):
	
	if body.name == "Player":
		ui.set_score_text(-10)
