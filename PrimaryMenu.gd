extends Node2D

var cur_index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$GithubOption.set_text_label("GitHub")
	$LinkedInOption.set_text_label("LinkedIn")
	$MastodonOption.set_text_label("Mastodon")
	$PixelfedOption.set_text_label("Pixelfed")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
