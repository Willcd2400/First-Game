/// @description Insert description here
// You can write your code in this editor
/*if(instance_exists(oEnemy1)){
	direction = point_direction(x, y, oEnemy1.x, oEnemy1.y);
}
else if(!instance_exists(oEnemy1)){
	direction = 0;
}
image_angle = direction;
*/
if (instance_exists(oEnemyController)){
    enemyId = 0;
    
    for (var i = 0; i < instance_number(oEnemyController); i++){
        var enemy = instance_find(oEnemyController, i);
        var enemyDistance = point_distance(x, y, enemy.x, enemy.y);
        
        if (enemyDistance <= t1Radius){
            if (enemyId == 0) enemyId = enemy;
           
            var pos = enemy.path_position;
            if (pos > enemyId.path_position) enemyId = enemy;
        }
    }    

    if (enemyId != 0){
        dirOfEnemy =  point_direction(x, y, enemyId.x, enemyId.y);
        image_angle = dirOfEnemy;
    
            if(canShoot){
                bulletId = instance_create_layer(x, y, "Bullets", oT1Bullet);
                bulletId.direction = dirOfEnemy;
                bulletId.speed = oT1Bullet.bulletSpeed;
                canShoot = false;
                alarm[0] = 20;
            }
    }
}
