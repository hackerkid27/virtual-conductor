@tool
extends AnimationPlayer


func run(bpm: int) -> void:
	speed_scale = bpm/120
	play("conduct-4")
