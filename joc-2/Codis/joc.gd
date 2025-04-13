extends Node2D
var meteorit_escena = preload("res://escenes/meteorit.tscn")
var num = 0
var cops2 = 3
var dificultat = 1
var cont = 0
var vegades = 0


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("reset"):
		reiniciar()

func _on_timer_timeout() -> void:
	cont += 1
	if cont == 20:
		dificultat += 1
		cont = 0
		print (dificultat)
	crear()
		
func crear_meteorit():
	var meteorit = meteorit_escena.instantiate()
	add_child(meteorit)
	add_to_group("meteorit")

func crear():
	vegades = 0
	while  vegades < dificultat:
		crear_meteorit()
		vegades += 1
		print (vegades)

func reiniciar():
	get_tree().reload_current_scene()
