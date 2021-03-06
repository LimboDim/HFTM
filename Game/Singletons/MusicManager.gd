extends Node

onready var melancholic = $Melancholic
onready var siste_viator = $SisteViator


enum Music {M_MELANCHOLIC = 1, M_SISTE_VIATOR}
var current_music = null

func _ready():
	if current_music == null and GameGlobals.music_enable:
		current_music = melancholic
		current_music.play()

func select_music(p_music):
	current_music.stop()
	
	match p_music:
		Music.M_MELANCHOLIC : 
			current_music = melancholic
		Music.M_SISTE_VIATOR : 
			current_music = siste_viator
		
func play_music():
	if current_music != null:
		current_music.play()