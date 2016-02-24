///Look for Projectile
IncomingProjectile = instance_place (x,y,oProjectile)

if instance_exists (IncomingProjectile) 
{   //if there was one send back 'true'
    //if the projectile in NOT a player chunk
    ProjectileHitSomething (IncomingProjectile)
    
    return true

}   else
    {   //If not send back false
        return false
    }
