/// @description pasos y direfeccion enemigo
#region //Reiniciar los enemigos 

if global.Enemigo
	{
		speed = 0;
		vspeed = 0;
		hspeed = 0;
		visible = false;
		
		x = xstart;
		y = ystart;
		exit;
	}
else //si no colisiona con el jugador
	{
		visible = true;
	}

#endregion

#region //Asignamos el movimiento aleatorio
	
if place_snapped(32,32)
	{
	if hspeed == 0
		{
			if random(4) <1 && place_free(x-1,y) //Mov. izquierda
				{		
					hspeed = -velocidad;
					vspeed = 0;
				}
				
			if random(4) <1 && place_free(x+1,y) //Mov. derecha
				{		
					hspeed = velocidad;
					vspeed = 0;
				}			
		}
	else
		{
			if random(4) <1 && place_free(x,y-1) //Mov. Arriba
				{		
					hspeed = 0;
					vspeed = -velocidad;
				}
				
			if random(4) <1 && place_free(x,y+1) //Mov. Abajo
				{		
					hspeed = 0;
					vspeed = velocidad;
				}
		}
	}
	
#endregion