extends Control

func _on_Main_Menu_button_down():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")

func _on_HTTPRequest_tree_entered():
	$HTTPRequest.request("http://localhost:3001/muppasario/get")

func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	#get size for loop runs
	var size = (body.size()/30)-1
	var json = JSON.parse(body.get_string_from_utf8())
	#.result to access json  on index
	var data = json.result
	setInterfaceData(data, size)
	print(json.result)
	
func setInterfaceData(data, size):
	#print("size of database entries: " + size)
	if size > 10:
		size = 10
	var temp = ""
	for n in size:
		if(n < size-1):
			temp +=  str(data.data[n].name) + "\n"
		if(n == size-1):
			temp +=  str(data.data[n].name)
	$Name.text = temp
	temp = ""
	for n in size:
		if(n < size-1):
			temp +=  str(data.data[n].score) + "\n"
		if(n == size-1):
			temp +=  str(data.data[n].score)
	$Score.text = temp
	
	

