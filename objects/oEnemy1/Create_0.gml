/// @description Insert description here
// You can write your code in this editor
eSpeed = 3.5 
e1HpMax = 10;
e1Hp = e1HpMax;
e1Radius = 100;
canShoot = true
path_start(path0, eSpeed, path_action_reverse, 1);
direction = point_direction(x, y, oTower1.x, oTower1.y);
image_angle = direction;
alarm[0] = 1;