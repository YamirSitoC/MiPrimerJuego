/// @description
// You can write your code in this editor


if sprite_index == Spr_muertes_player
{
	direction = 0;
	image_speed = 0;
	z = xstart;
	y = ystart;
	
	sprite_index = Spr_jugador_abajo;
	image_index = 0;
	
	global.Enemigo = false;
	audio_play_sound(Snd_intro,10, false);
	with(Obj_enemigo)
	{
		image_speed = 0;
		sprite_index = Spr_enemigo_abajo;
		speed = 4;
		velocity = 4;
	}
}