extends CharacterBody2D

class_name Player
var direction = Vector2.ZERO
var speed = 200

@onready var sprite_2d = $Sprite2D

func _physics_process(delta):
	direction = Input.get_vector("move_left","move_right","move_up","move_down")
	
	if velocity:
		if velocity.x < 0 || velocity.x > 0:
			sprite_2d.play("lado")
		elif velocity.y < 0:
			sprite_2d.play("tras")
		elif velocity.y > 0: 
			sprite_2d.play("front")
			
	else:
		sprite_2d.play("idle")
		
	
	if velocity.x > 0:
		sprite_2d.flip_h = false
	if velocity.x < 0:
		sprite_2d.flip_h = true
	
	velocity = direction * speed
	
	
		
	move_and_slide()
	
	
func has_resourse(item_name: String, amount: int):
	return true
