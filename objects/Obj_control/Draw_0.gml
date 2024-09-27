/// @description Menu
// You can write your code in this editor

#region // dibuejar score

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_score);

draw_text(32,16,"Points:" + string(global.Puntos));


#endregion

#region // dibujar las vidas
#endregion

draw_text(room_width/ 2, 16 , "Vidas: ");

for (var i = 0; i < global.Vidas; i+= 1 )
{
	draw_sprite_stretched(Spr_jugador_idk,2,room_width/2+string_width("VIDAS:  ")+(i*12),16,32,32);
}


#region // dibujar ready
#endregion

#region dibujar bono
#endregion

#region // dibujar powerup
#endregion