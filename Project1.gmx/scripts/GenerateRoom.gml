
instance_create (room_width / 2, room_height / 2, oPlayer)

if instance_exists (oGame) = false
{
    instance_create (room_width / 2, room_height / 2, oGame)
}

NumberOfBlocks = irandom_range (3, 10)
NumberOfBlockAttempts = NumberOfBlocks * 100
BlockAttempt = 0
BlockSize = 128
SafetyMargin = BlockSize

while instance_number (oSolid) < NumberOfBlocks && BlockAttempt < NumberOfBlockAttempts
{
    NewBlock = instance_create (random_range (SafetyMargin, room_width - SafetyMargin), random_range (SafetyMargin, room_height - SafetyMargin), oSolid)
    NewBlock.x = (NewBlock.x div BlockSize) * BlockSize
    NewBlock.y = (NewBlock.y div BlockSize) * BlockSize
    with NewBlock
    {
        
        //If we're on top of the Player destroy us
        if place_meeting (x, y, oPlayer)
        {
            instance_destroy ()
        }
    }
    BlockAttempt = BlockAttempt + 1
}

NumberOfBoomers = irandom_range (3, 7)
NumberOfBoomerAttempts = NumberOfBoomers * 100
BoomerAttempt = 0

while instance_number (oBoomer) < NumberOfBoomers && BoomerAttempt < NumberOfBoomerAttempts
{
    NewBoomer = instance_create (random (room_width), random (room_height), oBoomer)
    with NewBoomer
    {
        //If we're on top of the Player destroy us
        if place_meeting (x, y, oPlayer)
        {
            instance_destroy ()
        }
        if place_meeting (x, y, oSolid)
        {
            instance_destroy ()
        }
    }
    BoomerAttempt = BoomerAttempt + 1
}

NumberOfTints = 30
Color1 = make_color_rgb (random(255), random(255), random(255))
Color2 = make_color_rgb (random(255), random(255), random(255))

while instance_number (oTint) < NumberOfTints
{
    NewTint = instance_create (random (room_width), random (room_height), oTint)
    NewTint.image_blend = choose (Color1, Color2)
}
