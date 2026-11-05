extends Area2D

@onready var spike = $Spike

func _ready():
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

	spike.hide()

func _on_body_entered(body):
	if body.is_in_group("Player"):
		spike.show()

func _on_body_exited(body):
	if body.is_in_group("Player"):
		spike.hide()
