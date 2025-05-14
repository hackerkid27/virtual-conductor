extends HBoxContainer

signal value_changed(new_value: int)

@export var value = 120
@export var step = 1
@export var max = 218
@export var min = 40

@onready var display = $LineEdit


func _on_button_up_pressed() -> void:
	value += step
	if value > max:
		value = max
	emit_signal("value_changed", value)
	display.text = str(value)


func _on_button_down_pressed() -> void:
	value -= step
	if value < min:
		value = min
	emit_signal("value_changed", value)
	display.text = str(value)
