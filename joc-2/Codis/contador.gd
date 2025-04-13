extends MarginContainer
var temps = 0
var continua = true
var compt = 0

@onready var nau = get_node("../Nau")
@onready var controls = get_node("../controls")
@onready var dificultat = get_node("../dificultat")
@onready var joc = get_node("..")

func _ready() -> void:
	position = Vector2(1000,2)
	
func _process(delta: float) -> void:
	get_node("VBoxContainer/Label").text = "Punts: " + str(temps)
	if compt == 7:
		controls.position = Vector2(-9999,-99999)
	if temps <= 30:
		joc.dificultat = 1
	if temps > 30:
		joc.dificultat = 2

func _on_timer_timeout() -> void:
	compt += 1
	if nau:
		if nau.mort == true:
			
			continua = false
			
	if continua == true:
		if Input.is_action_pressed("accelera"):
			temps += 1.5
		temps +=1
