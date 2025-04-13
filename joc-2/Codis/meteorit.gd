extends Area2D

var velocitat_1 =  Vector2(randf_range(-200,-2000),0)
var velocitat_2 =  Vector2(randf_range(-400,-2000),0)
var posicio = Vector2(randf_range(1200,3000),randf_range(30,700))
var vel
@onready var contador = get_node("../contador")
@onready var meteo = $AnimatedSprite2D

func _ready() -> void:
	position = posicio
	meteo.play("default")
	
func _process(delta: float) -> void:
	if contador.temps <= 30:
		vel = velocitat_1
		if Input.is_action_pressed("accelera"):
			vel = velocitat_1 + Vector2(-400,0)
	elif contador.temps > 30:
		vel = velocitat_2
		if Input.is_action_pressed("accelera"):
			vel = velocitat_2 + Vector2(-400,0)
			
	position = position + vel*delta
	
 
func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("jugador"):
		pass
	if area.is_in_group("meteorit"):
		pass
	else:
		queue_free()
