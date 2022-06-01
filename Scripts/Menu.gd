extends Control


# when dead, back in the menu coins get set to 0
func _process(delta):
	Global.coins = 0


func _on_Start_pressed():
	get_tree().change_scene("res://Scenes/Level.tscn")


func _on_Highscores_pressed():
	get_tree().change_scene("res://Scenes/Highscore.tscn")
	

func _on_Quit_pressed():
	get_tree().quit()



