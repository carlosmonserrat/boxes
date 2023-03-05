extends Area2D

onready var scoreManager = get_node("../ScoreManager")
  
func _on_object_body_entered(body):	
	if body.name == "player":
		scoreManager.score += 100
		scoreManager.collected_items += 1  
		self.queue_free()
