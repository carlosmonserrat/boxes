extends Node

onready var score_label = get_node("../ui/score")
onready var accept_dialog_factory = get_node("../ui/PopUpFactory")
onready var root_node = get_tree().get_root()

var score = 0 setget update_score
var collected_items= 0 setget update_collected_items
var completed_delivery = 0 setget update_delivery
var items_to_collect = 2

func items_are_collected():
	return collected_items == items_to_collect

func update_score(value):
	score = value
	score_label.text = "Score: " + str(value)

func update_collected_items(value):
	collected_items = value
	print(collected_items)
	if collected_items == items_to_collect:
		accept_dialog_factory.create("Collected items!", "You have all the items! go and deliver them!", "Close")
		
func update_delivery(value):
	completed_delivery = value
	self.score += 200
	print(score,self.score)
	accept_dialog_factory.create("Delivery complete!", "You delivered the items and earned 200 points!", "Close")
