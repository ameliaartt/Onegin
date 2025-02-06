extends Node
#Главы
var level1 = 0 #первая глава закончена
var level2 = 0 #вторая глава закончена
#Общее
var move = 0 #Движени
var dilog = 0 #Контроль диалога
var goal = "Цель: накраситься" #Цель
var mus = 0 #Музыка
var sprite = 0 #Спрайт Онегина
var sprite2 = 0 #Спрайты нпс

#Для отчивок
var end1 = 0
var end2 = 0
var komikachive = 0
var sansachive = 0
var musicachive = 0
var kyklavod = 0


#Глава первая
#комната Онегина
var clothes_1 = 0 #Наряд Онегина
var shelf_count = 0
var bad_count = 0
var bydyar_count = 0
#Бульвар
var most = 0
var chaika = 0
var soli = 0
var allei = 0
var lovers = 0
var do_count = 0
var move1 = 0
var people = 0
#Ресторан
var knaz = 0
var solev2 = 0
var fontan = 0
var girls = 0
var dama = 0 #нужно в главе с балом
var komik = 0 #нужно на балу
var anekdot = 0 
#Бал
var go_home = 0
var vine = 0
var poet = 0
var sholer = 0
var komik2 = 0
#Ночь
var dada = 0

#Глава вторая
var sleep = 0
var rep = 0
var mui = 0
var first = 0
var second = 0
var third = 0
var four = 0
var five = 0
var fire = 0


func _ready():
	load_game()
	pass

var config
var path_to_save_file = "user://game.cfg"
var section_name = "game"

func _process(delta):
	pass


func save_game():
	config.set_value(section_name, "end1", end1)
	config.set_value(section_name, "end2", end1)
	config.set_value(section_name, "level1", level1)
	config.set_value(section_name, "level2", level2)
	config.set_value(section_name, "sansachive", sansachive)
	config.save(path_to_save_file)
	pass


func load_game():
	config = ConfigFile.new()
	config.load(path_to_save_file)
	end1 = config.get_value(section_name, "end1", 0)
	end2 = config.get_value(section_name, "end2", 0)
	level1 = config.get_value(section_name, "level1", 0)
	level2 = config.get_value(section_name, "level2", 0)
	sansachive = config.get_value(section_name, "sansachive", 0)
	pass
