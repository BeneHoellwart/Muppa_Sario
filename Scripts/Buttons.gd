extends Node2D

func _on_rightButton_pressed():
	Input.action_press("move_right")
	
func _on_rightButton_released():
	Input.action_release("move_right")

func _on_leftButton_pressed():
	Input.action_press("move_left")
	
func _on_leftButton_released():
	Input.action_release("move_left")

func _on_jumpButton_pressed():
	Input.action_press("jump")

func _on_jumpButton_released():
	Input.action_release("jump")
