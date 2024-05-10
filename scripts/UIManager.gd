extends CanvasLayer

func _ready():
	Game.gained_coins.connect(update_coin_display)

func update_coin_display(coins):
	$CoinDisplay.text = str(coins)
	
