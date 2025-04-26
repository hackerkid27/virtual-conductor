extends AnimationPlayer


@export var bpm: int = 120


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_animation = "conduct-4"


func run(bpm: int) -> void:
	speed_scale = bpm/120
	play("conduct-4")
