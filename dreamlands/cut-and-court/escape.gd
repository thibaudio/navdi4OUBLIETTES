extends Area2D

func _ready() -> void:
	area_entered.connect(func(player_area):
		(player_area.get_parent() as NavdiSolePlayer).escape.call_deferred("fall")
	)