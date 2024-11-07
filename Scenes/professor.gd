extends CharacterBody2D

class_name Professor



@onready var sprite_2d = $Sprite2D

var new_dialog = null
@onready var hud = $"../HUD"
var dialog_screen = preload("res://Scenes/dialog_screen.tscn")
var player_ref = null
var prof_level = 0
var prof_data = {
	0:{
		"item_required" : {
			"item_name": "livro",
			"item_amount": 5
		}
	}
}
var dialog_data = {
	0:  {
		"faceset" : "res://DialogTest/faceset_resized_140x140.png",
		"dialog" : "Olá, aluno! Preciso muito da sua ajuda para encontrar alguns livros que perdi pela escola. ",
		"title" : "Professor"
	},
	1:  {
		"faceset" : "res://DialogTest/faceset_resized_140x140.png",
		"dialog" : "São cinco livros ao todo, e estão espalhados por aí.",
		"title" : "Professor"
	},
	2:  {
		"faceset" : "res://DialogTest/faceset_resized_140x140.png",
		"dialog" : "Além de me ajudar, você também vai aprender um pouco sobre organização e cuidado com os materiais.",
		"title" : "Professor"
	},
	3:  {
		"faceset" : "res://DialogTest/faceset_resized_140x140.png",
		"dialog" : "Vamos nessa? Cada livro que você encontrar é um passo para completarmos nossa missão juntos!",
		"title" : "Professor"
	},
}

func _on_area_2d_body_entered(body):
	if body is Player:
		player_ref = body
		sprite_2d.play("interact")

func _on_area_2d_body_exited(body):
	if body is Player:
		player_ref = body
		sprite_2d.play("default")

func _process(delta):
	if Input.is_action_just_pressed("interact") and player_ref != null :
		var item_data: Dictionary = prof_data[prof_level]["item_required"]
		if player_ref.has_resourse(item_data["item_name"], item_data["item_amount"]):
			if new_dialog == null:
				new_dialog = dialog_screen.instantiate()
				new_dialog.data = dialog_data
				hud.add_child(new_dialog)
			else :
				return
				
