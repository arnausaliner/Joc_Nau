extends StaticBody2D

var velocitat := Vector2(-400,0) 

func _ready() -> void:
	
	position = Vector2((900000/2),330)


func _process(delta: float) -> void:
	velocitat = Vector2(-400,0)
	if Input.is_action_pressed("accelera"):
		velocitat += Vector2(-800,0)
	position = position + velocitat*delta
