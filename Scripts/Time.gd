extends Label

var time = 0

func _process(delta):
	text = str(updateScore())
	
	if ceil(60-time) < 1:
		#print("times up!")
		get_tree().change_scene("res://Scenes/DeathScreen.tscn")
		
func updateScore():
	time += 0.01
	return ceil(60-time)
	
