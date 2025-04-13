extends Area2D
var velocitat := Vector2(0,0)
var mort = false
func _ready() -> void:
	position = Vector2(220,320) #posiscio inicial
	
func _process(delta: float) -> void:
	velocitat = Vector2(0,0)
	rotation = 0
	
	
	if Input.is_action_pressed("mou_amunt"):
		if Input.is_action_pressed("accelera"):
			rotation += deg_to_rad(-5)
			velocitat += Vector2(0,-350)
		else:
			rotation += deg_to_rad(-13)
			velocitat += Vector2(0,-600)
	if Input.is_action_pressed("mou_avall"):
		if Input.is_action_pressed("accelera"):
			rotation += deg_to_rad(5)
			velocitat += Vector2(0,350)
		else:
			rotation += deg_to_rad(13)
			velocitat += Vector2(0,600)
	
	if position.y < 40:
		position.y = 40
	if position.y > 610:
		position.y = 610
	
	position = position + velocitat*delta

func _on_area_entered(area: Area2D) -> void:
	mort = true
	position = Vector2(-99999,-99999)
func mor():
	queue_free()
	
	

	
