extends Node2D

@export var text = "":
	set(value):
		text = value
		notify_property_list_changed()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_text_label(text_in):
	$Label.text = text_in

func _on_button_pressed():
	print("clicked!")

func _get_property_list():
	var properties: Array = []
	properties.append({
		"name": "Text",
		"type": TYPE_STRING,
		"usage": PROPERTY_USAGE_DEFAULT
	})
	$Label.text = text
	return (properties)
