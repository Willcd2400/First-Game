/// @description Insert description here
// You can write your code in this editor
t1Active = false;
t1HpMax = 10;
t1Hp = t1HpMax;
t1Radius = 75;
canShoot = true
if(instance_exists(oEnemy1)){
	direction = point_direction(x, y, oEnemy1.x, oEnemy1.y);
}
else if(!instance_exists(oEnemy1)){
	direction = 0;
}
image_angle = direction;