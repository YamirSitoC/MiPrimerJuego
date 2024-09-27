//Asignación de teclas
Der_tecla = keyboard_check( ord( "D" ) );
Izq_tecla = keyboard_check( ord( "A" ) );
Arriba_tecla = keyboard_check( ord( "W" ) );
Abajo_tecla = keyboard_check( ord( "S" ) );


//Calcular la velocidad del personaje
xspd = (Der_tecla - Izq_tecla) * move_spd;
yspd = (Abajo_tecla - Arriba_tecla) * move_spd;


//Asignar los sprites
mask_index = sprite[DOWN];

if yspd == 0
{
	if xspd > 0 { face = RIGHT };
	if xspd < 0 { face = LEFT };
}

if xspd == 0
{
	if yspd > 0 { face = DOWN };
	if yspd < 0 { face = UP };
}

sprite_index = sprite[face];


//Colisiones
if place_meeting( x + xspd, y, Obj_wall ) == true
{
	xspd = 0;
}

if place_meeting( x, y + yspd, Obj_wall ) == true
{
	yspd = 0;
}


//Incrementar velocidad
x = x + xspd;
y += yspd;


//
if xspd == 0 && yspd == 0
{
	image_index = 0;
}

depth = - bbox_bottom;