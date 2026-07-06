extends Node2D

@onready var anim_player := $AnimationPlayer


func _ready() -> void:
	anim_player.play("idle")


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed and not event.echo:
		if event.keycode == KEY_1:
			anim_player.play("idle")
		elif event.keycode == KEY_2:
			anim_player.play("run")