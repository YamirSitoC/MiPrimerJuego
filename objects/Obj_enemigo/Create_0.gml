/// @description configuracion enemigo
// You can write your code in this editor


randomize();

sprite_index = Spr_enemigo_abajo;

image_index = 0;

// iniciamos el movimiento del enemigo

velocidad = 4;
direccion = choose(0,180,270);
motion_set(direccion,velocidad);