extends Node

var coins = 0


func _on_Coin_0_coin_collected():
	coins = coins+1
	if String(coins) == null:
		"Coins: 0"
	var CoinScore = "Coins: " + String(coins)
	Global.coins += 1
	#print("Collectibles")
