extends KinematicBody

var spd = rand_range(150,150)

func _physics_process(delta):
	move_and_slide(Vector3(0,0,spd))
	if transform.origin.z > 10:
		queue_free()


func _on_Area_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("res://game over.tscn")
	
