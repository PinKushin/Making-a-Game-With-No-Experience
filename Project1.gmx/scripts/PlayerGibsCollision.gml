if place_meeting ( x + hspeed, y + vspeed, oSolid)
{
    //Keep as much of our horizontal speed as possible
    OldHspeed = hspeed
    hspeed = 0
    while 
          place_meeting ( x + hspeed + sign(OldHspeed), y, oSolid) = false && //check there's still room if we crept closer to our old hspeed
          abs (hspeed) < abs (OldHspeed) //check we haven't restored all of our old hspeed, and only pay attention to the "absolute" values, the magnitudes
          {
              hspeed = hspeed + sign(OldHspeed) //Creep towards old hspeed
          }
    //We have now figured out how much of our hspeed we can keep without hitting anything, so we're keeping it.
    
    //Keep as much of our vertical speed as possible
    OldVspeed = vspeed
    vspeed = 0
    while 
          place_meeting ( x + hspeed, y + vspeed + sign(OldVspeed), oSolid) = false && //check there's still room if we crept closer to our old vspeed
          abs (vspeed) < abs (OldVspeed) //check we haven't restored all of our old vspeed, and only pay attention to the "absolute" values, the magnitudes
          {
              vspeed = vspeed + sign(OldVspeed) //Creep towards old vspeed
          }
}
