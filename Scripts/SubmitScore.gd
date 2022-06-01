extends Node2D


func _ready():
	$Label.text = "Game Over\nScore: " + String(Global.coins)

func _on_Submit_pressed():
	var textinput = $LineEdit.text
	var coins = String(Global.coins)
	var data = {
		"name": textinput,
		"score": coins
	}
	var query = JSON.print(data)
	
	var headers = ["Content-Type: application/json"]
	
	#false for SSH
	$HTTPRequest.request("http://localhost:3001/muppasario/post",headers,false,HTTPClient.METHOD_POST,query) 
	print(query)

func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	print("Summit complete")
	get_tree().change_scene("res://Scenes/Highscore.tscn")


func _on_MainMenu_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
