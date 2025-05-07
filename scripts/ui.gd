extends Control

signal beat_changed(new_beat: int)
signal tempo_changed(new_tempo: int)


func _on_beat_selector_item_selected(index: int) -> void:
	emit_signal("beat_changed", index)


func _on_tempo_spin_box_value_changed(value: float) -> void:
	emit_signal("tempo_changed", value)
