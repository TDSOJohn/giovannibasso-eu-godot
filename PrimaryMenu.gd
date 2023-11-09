extends Node2D

var cur_index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$GithubOption.set_text_label("GitHub")
	$LinkedInOption.set_text_label("LinkedIn")
	$MastodonOption.set_text_label("Mastodon")
	$PixelfedOption.set_text_label("Pixelfed")

func move_down():
	cur_index += 1
	if cur_index > 3:
		cur_index = 0
	focus_option()
	print(cur_index)

func move_up():
	cur_index -= 1
	if cur_index < 0:
		cur_index = 3
	focus_option()
	print(cur_index)

func focus_option():
	if cur_index == 0:
		$GithubOption.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("move_down"):
		move_down()
	if Input.is_action_just_pressed("move_up"):
		move_up()
