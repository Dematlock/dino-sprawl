extends Node

@onready var score_keeper: Label = $"../Player/Camera2D/ScoreKeeper"

var score = 0

func add_points():
	score += 1
	print(score)
	score_keeper.text = "Score: " + str(score)
