///IHaveLineOfSiteTo (Thing your looking for)

//Line of Site Artificial Intelligence
Thing = argument0
Result = false

if instance_exists (Thing)
{
    if collision_line (x, y, Thing.x, Thing.y, oSolid, true, true) = noone 
    {
        Result = true
    }
}

return Result
