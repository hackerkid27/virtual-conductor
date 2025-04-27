extends AnimationPlayer


@export var bpm: int = 120


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass


func run(bpm: int) -> void:
	speed_scale = bpm/120
	play("conduct-4")
