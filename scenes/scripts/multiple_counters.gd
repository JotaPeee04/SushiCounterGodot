extends Node

@export_range(1,8) var numJugadores = 1
var simpleCounterScene = preload("res://scenes/simpleCounter.tscn")
var vboxGodScene = preload("res://scenes/v_box_god.tscn")

func _ready() -> void:
	print_debug(numJugadores)
	add_jugadores(numJugadores)
	
	
func init(n) -> void:
	numJugadores = n
	
func add_jugadores(n):
	
	if n > 1:
		for i in range(2,n+1):
			print_debug(i)
			if i % 2 == 1: #SI ES IMPAR AÑADO UN VBOX
				var vbox = vboxGodScene.instantiate()
				$Control/HBoxContainer.add_child(vbox)
			
			instanciar_contador()
		# EN CUALQUIER CASO AÑADO AL ÚTLIMO VBOX
		
		
func instanciar_contador():
	var contador = simpleCounterScene.instantiate()
	$Control/HBoxContainer.get_child(-1).add_child(contador)
