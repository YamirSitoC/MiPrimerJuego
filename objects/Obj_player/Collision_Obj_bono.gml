/// @description Bonos
// You can write your code in this editor

global.Puntos += 100;
global.Bonos = true;

audio_play_sound(Snd_bono, 10, false);

with(other)
{
	instance_destroy();
}