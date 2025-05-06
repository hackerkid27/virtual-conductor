extends Control


signal update_beat
signal update_tempo


func _on_beat_selector_item_selected(index: int) -> void:
	update_beat.emit()


func _on_tempo_spin_box_value_changed(value: float) -> void:
	update_tempo.emit()
