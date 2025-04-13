extends MarginContainer
@onready var nau = get_node("../Nau")

func _ready() -> void:
	position = Vector2(-99999,-99999)
func _process(delta: float) -> void:
	if nau.mort == true:
		position = Vector2(0,50)
