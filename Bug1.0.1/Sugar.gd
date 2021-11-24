extends Area2D

export var value = 1

func _process(delta):
	
	# rotate 90 degrees a second
	rotation_degrees += 90 * delta

func _on_Sugar_body_entered(body):
	
	if body.name == "Player":
		body.collect_sugar(value)
		queue_free()
	elif body.name == "Enemy":
		body.collect_sugar(value)
		queue_free()

