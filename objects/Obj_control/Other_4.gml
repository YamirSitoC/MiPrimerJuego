/// @description configuracion de nivel
// You can write your code in this editor

audio_play_sound(Snd_intro,10, false);
//instance_deactivate_object(	Obj_enemigo);

global.Enemigo = false;
global.Power = false;
global.Bonos = false;

alarm[0] = room_speed*10;

room_speed = 60;