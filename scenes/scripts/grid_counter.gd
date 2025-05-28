extends Container

@export var numJugadores : int = 0


func _ready() -> void:
	$GridContainer.columns = numJugadores / 2
