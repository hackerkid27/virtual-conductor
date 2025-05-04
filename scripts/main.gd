extends Node2D

@onready var ui = $UI
@onready var beat_container = $BeatContainer

# Preload beat pattern scenes
const BEAT_SCENES = {
	2: preload("res://scenes/Beat2.tscn"),
	3: preload("res://scenes/Beat3.tscn"),
	4: preload("res://scenes/Beat4.tscn"),
}

var current_beat_scene: Node = null

func _ready():
	ui.beat_changed.connect(_on_beat_changed)
	ui.tempo_changed.connect(_on_tempo_changed)

	# Optional: Load a default beat pattern (e.g., 4)
	_load_beat_scene(4)

func _on_beat_changed(beat_count: int):
	_load_beat_scene(beat_count)

func _on_tempo_changed(tempo: int):
	if current_beat_scene and current_beat_scene.has_method("set_tempo"):
		current_beat_scene.set_tempo(tempo)

func _load_beat_scene(beat_count: int):
	# Remove old scene
	if current_beat_scene:
		beat_container.remove_child(current_beat_scene)
		current_beat_scene.queue_free()

	# Load and add new scene
	if beat_count in BEAT_SCENES:
		current_beat_scene = BEAT_SCENES[beat_count].instantiate()
		beat_container.add_child(current_beat_scene)
