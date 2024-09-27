/// @description Insert description here
// You can write your code in this editor


if !(global.Enemigo) && (x=other.x || y=other.y)
{
	audio_stop_all(); // detenemos sonidos 
	audio_play_sound(Snd_muerte,10,false); // muerte sonido
	
	// reiniciamos las configuraciones del juego
	room_speed = 50;
	Obj_control.alarm[1] = room_speed*15;
	
	speed = 0; // reinicamos velocidad 
	global.Vidas -=1; // restamos vid
	sprite_index = Spr_muertes_player;
	image_index = 1;
	global.Enemigo = true;
	
	with(Obj_bono)
	{
		instance_destroy();
	};
}