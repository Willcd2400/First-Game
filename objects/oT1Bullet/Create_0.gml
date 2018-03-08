/// @description Towers Bullets
damage = 2;
bulletSpeed = 10;
if(instance_exists(oEnemy1)){
	move_towards_point(oEnemy1.x, oEnemy1.y, 10);
}
else{
instance_destroy();
}