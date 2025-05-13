extends Node2D


@onready var animator = $Animation
@onready var four_beat = animator.get_node("Beat4")
@onready var three_beat = animator.get_node("Beat3")
@onready var two_beat = animator.get_node("Beat2")
@onready var animations = ["beat-4", "beat-3", "beat-2"]
@onready var animation_nodes = [four_beat, three_beat, two_beat]


func _ready() -> void:
	animator.play("beat-4")


func _on_ui_beat_changed(new_beat: int) -> void:
	for animation in animation_nodes:
		animation.hide()
	animator.current_animation = animations[new_beat]
	animation_nodes[new_beat].show()


func _on_ui_tempo_changed(new_tempo: int) -> void:
	var new_tempo_float: float = new_tempo
	animator.speed_scale = new_tempo_float / 120
