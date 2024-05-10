extends CharacterBody2D

var animated_sprite
var speed = 200

func _ready():
	animated_sprite = $AnimatedSprite2D
	
func _physics_process(delta):
	update_animation()
	move_and_slide()
	
func update_animation():
	var animation_prefix = "black_cat" + "_"
	var direction = Input.get_vector("walk_left", "walk_right", "walk_up", "walk_down")
	velocity = direction * speed
	
	var anim = ""
	
	if velocity.length() > 0.0:
		if direction.x > 0 :
			anim = "walk_right"
		if  direction.y < 0:
			anim = "walk_up"
		if direction.y > 0:
			anim = "walk_down"
		if direction.x < 0 :
			anim = "walk_left"
	else:
		anim = "idle"
	
	
		
	animated_sprite.play(animation_prefix + anim)
