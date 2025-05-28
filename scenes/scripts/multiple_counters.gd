extends Node

@export var numJugadores : int = 0

func _ready() -> void:
	$Control/Container.numJugadores = numJugadores
