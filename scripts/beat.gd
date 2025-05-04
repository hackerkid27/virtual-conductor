extends Node2D

@export var animation_player: AnimationPlayer

func set_tempo(tempo: int):
	var animation_speed = tempo / 120.0
	animation_player.speed_scale = animation_speed
