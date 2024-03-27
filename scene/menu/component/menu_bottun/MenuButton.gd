extends Control

@export var lavel_text : String = "empty"

var focus_image : Control
var menu_label : Label


func _ready():
	menu_label = $Label
	menu_label.text = lavel_text
	focus_image = $FocusImage

func _on_focus_entered():
	focus_image.visible = true
func _on_focus_exited():
	focus_image.visible = false # Replace with function body.



func _on_button_down():
	menu_label.set_position( menu_label.position - Vector2(0, - 5))


func _on_button_up():
	menu_label.set_position( menu_label.position - Vector2(0, 5))
