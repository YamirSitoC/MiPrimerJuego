/// @description Insert description here
// You can write your code in this editor


#region // activar enemigos


if !(audio_is_playing(Snd_intro))
{
instance_activate_object(Obj_enemigo);
}


#endregion

#region // Destruir todo

if global.Vidas == 0
{
	with(Obj_enemigo)
	{
		instance_destroy();
	};
	
	with(Obj_cervepoints)
	{
		instance_destroy(Obj_cervepoints)
	};
	
	with(Obj_cervepoints2)
	{
		instance_destroy();
	};
	
	with(Obj_bono)
	{
		instance_destroy();
	};
}


#endregion

#region // verificar el nivel es completado


#endregion