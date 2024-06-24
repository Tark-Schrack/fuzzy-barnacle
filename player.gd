extends CharacterBody2D


const SPEED = 100.0
var xco=0.0
var yco=0.0

# Get the gravity from the project settings to be synced with RigidBody nodes.


func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_vector("ui_left","ui_right","ui_up", "ui_down")
	velocity = direction * SPEED
	xco=position.x
	yco=position.y
	move_and_slide()




		
