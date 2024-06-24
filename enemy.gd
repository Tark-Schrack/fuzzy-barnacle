extends CharacterBody2D
@onready var Player=$"../player"

const SPEED = 20.0
var hp=100

func _physics_process(delta):
	var abc=Vector2(Player.xco-position.x,Player.yco-position.y).normalized()
	var direction=abc
	velocity = direction * SPEED
	move_and_slide()
	
func _on_area_2d_body_entered(x):
	
	print(x)
	hp=hp-1 # Replace with function body.
	$"../label".text=str(hp)
