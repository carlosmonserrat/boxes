extends Control
onready var root_node = get_tree().get_root()

func create(title,text,closeButton):
	var popup = AcceptDialog.new()
	popup.window_title = title
	popup.dialog_text = text
	popup.get_ok().text = closeButton
	popup.popup_centered()
	root_node.add_child(popup)
	popup.show()
