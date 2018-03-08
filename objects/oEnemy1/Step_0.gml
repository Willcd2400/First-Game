/// @description Insert description here
// You can write your code in this editor
//path_start(path0, 3.5, path_action_reverse, 1)
/*if(e1Hp <= 0){
	instance_destroy();
}
if(instance_exists(oTower1)){
direction = point_direction(x, y, oTower1.x, oTower1.y);
}
image_angle = direction;
*/
if (instance_exists(oTowerController))
{
    towerId = 0;
    
    for (var i = 0; i < instance_number(oTowerController); i++)
    {
        var tower = instance_find(oTowerController, i);
        var towerDistance = point_distance(x, y, tower.x, tower.y);
        
        if (towerDistance <= e1Radius)
        {
            if (towerId == 0) towerId = tower;
           
            var pos = tower.path_position;
            if (pos > towerId.path_position) towerId = tower;
        }
    }    

    if (towerId != 0)
    {
        dirOfTower =  point_direction(x, y, towerId.x, towerId.y);
        image_angle = dirOfTower;
    
            if(canShoot)
            {
                bulletId = instance_create_layer(x, y, "Bullets", oE1Bullet);
                bulletId.direction = dirOfTower;
                bulletId.speed = oE1Bullet.bulletSpeed;
                canShoot = false;
                alarm[0] = 30;
            }
    }
}