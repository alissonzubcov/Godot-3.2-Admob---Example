extends Node2D

onready var admob = $Admob

func _ready():
	admob.load_banner()
	admob.load_interstitial()
	admob.load_rewarded_video()
	$showBanner.connect("pressed", self, "showBanner")
	$showInter.connect("pressed", self, "showInter")
	$showV.connect("pressed", self, "showV")
	$Admob.connect("banner_loaded", self, "enableBtnBanner")
	$Admob.connect("interstitial_loaded", self, "enableBtnInter")
	$Admob.connect("rewarded_video_loaded", self, "enableBtnVideo")
	pass


func showBanner():
	print("show banner")
	admob.show_banner()
	pass
func showInter():
	print("show intersis")
	admob.show_interstitial()
	pass
func showV():
	print("show video")
	admob.show_rewarded_video()
	pass

func enableBtnBanner():
	$showBanner.disabled = false
	pass

func enableBtnInter():
	$showInter.disabled = false
	pass
func enableBtnVideo():
	$showV.disabled = false
	pass
