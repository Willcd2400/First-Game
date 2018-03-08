/// @description Draw Health Bar
draw_self();

var hp = (t1Hp / t1HpMax) * 100;
draw_healthbar(x - 18, y - 25, x + 16, y - 33, hp, c_black, c_red, c_green, 0, true, true);

if(position_meeting(mouse_x, mouse_y, (self))){
	with(self){
		draw_circle_color(x, y, t1Radius, c_aqua, c_aqua, true);
	}
}