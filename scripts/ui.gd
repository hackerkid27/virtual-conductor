extends Control

signal tempo_changed(new_tempo: int)
signal beat_changed(beats_per_measure: int)

@onready var tempo_spinbox: SpinBox = $VBoxContainer/TempoSpinBox
@onready var beat_selector: OptionButton = $VBoxContainer/BeatSelector

func _ready():
	# Connect SpinBox signal for tempo
	tempo_spinbox.value_changed.connect(_on_tempo_changed)

	# Connect OptionButton signal for beat selection
	beat_selector.item_selected.connect(_on_beat_selected)

func _on_tempo_changed(new_value: float) -> void:
	emit_signal("tempo_changed", int(new_value))

func _on_beat_selected(index: int) -> void:
	var item_text := beat_selector.get_item_text(index)
	
	# Assuming item_text format is like "4 Beats/Measure"
	var beat_count := int(item_text.left(1))  # Extract the first digit
	emit_signal("beat_changed", beat_count)
