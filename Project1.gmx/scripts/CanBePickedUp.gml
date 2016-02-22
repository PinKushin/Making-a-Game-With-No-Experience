//Pick Up Weapons
if instance_exists (Owner) = false
{
    if instance_exists (instance_place (x,y,oPlayer))
    {   
        //Remember Who Owns Us
        Owner = oPlayer.id
        //Add us to the Inventory
        Owner.Weapon [Owner.WeaponCount] = self.id 
        //tell our owner we have 1 more weapon
        Owner.WeaponCount = Owner.WeaponCount + 1
    }
}

