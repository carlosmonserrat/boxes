extends Area2D

onready var scoreManager = get_node("../ScoreManager")

func _on_delivery_place_body_entered(body):
	if body.name == "player" && scoreManager.items_are_collected():
		scoreManager.completed_delivery += 1
