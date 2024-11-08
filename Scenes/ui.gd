extends CanvasLayer

@onready var icon = $MarginContainer/HBoxContainer/icon
@onready var label = $MarginContainer/HBoxContainer/Label
@onready var control = $"."


# Called when the node enters the scene tree for the first time.
func _ready():
	#if Global.HUD_active == true:
		#control.visible = true
		label.text = str("x %01d" % Global.livros)
		pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
