extends Node

var dialog_screen = preload("res://Scenes/dialog_screen.tscn")
@onready var hud = $HUD
var new_dialog = null
var dialog_data = {
	0:  {
		"faceset" : "res://DialogTest/faceset_resized_140x140.png",
		"dialog" : "Olá! Sejam muito bem-vindos ao nosso jogo! ",
		"title" : "Desenvolvedores"
	},
	1:  {
		"faceset" : "res://DialogTest/faceset_resized_140x140.png",
		"dialog" : "Ele foi criado com carinho para que vocês se divirtam enquanto aprendem coisas importantes",
		"title" : "Desenvolvedores"
	},
	2:  {
		"faceset" : "res://DialogTest/faceset_resized_140x140.png",
		"dialog" : "sobre amizade, trabalho em equipe e como lidar com sentimentos.",
		"title" : "Desenvolvedores"
	},
	3:  {
		"faceset" : "res://DialogTest/faceset_resized_140x140.png",
		"dialog" : "Para completar o jogo, vocês vão passar por uma série de desafios, ajudando colegas e professores.",
		"title" : "Desenvolvedores"
	},
	4:  {
		"faceset" : "res://DialogTest/faceset_resized_140x140.png",
		"dialog" : "Cada tarefa que vocês realizarem vai ajudar a tornar nossa escola um lugar ainda melhor! ",
		"title" : "Desenvolvedores"
	},
	5:  {
		"faceset" : "res://DialogTest/faceset_resized_140x140.png",
		"dialog" : "Preparados? Vamos começar a explorar!",
		"title" : "Desenvolvedores"
	},
	6:  {
		"faceset" : "res://DialogTest/faceset_resized_140x140.png",
		"dialog" : "Se aproxime do professor e interaja com o botão 'E' para receber sua primeira missão",
		"title" : "Desenvolvedores"
	}
}


func _process(delta):
	await get_tree().create_timer(1.5).timeout
	if new_dialog == null:
		new_dialog = dialog_screen.instantiate()
		new_dialog.data = dialog_data
		hud.add_child(new_dialog)
		new_dialog = {}
