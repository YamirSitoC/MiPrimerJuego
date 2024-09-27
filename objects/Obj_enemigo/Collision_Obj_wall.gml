/// @description colision con plataformas de la pared
// You can write your code in this editor

hspeed = -hspeed;
vspeed = -vspeed;


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