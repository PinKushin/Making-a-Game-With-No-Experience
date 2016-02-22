///ExplodeIntoaNumberOfGibs(Number of Gibs,Object Name of Gibs)
NumberOfGibsToCreate = argument0
TypeOfGibs = argument1
GibsCreatedSoFar = 0
    
//Loop Command to create Gibs
while GibsCreatedSoFar <  NumberOfGibsToCreate 
    {   
        //Create Gib
        instance_create (x, y, TypeOfGibs)
        //Count it as created
        GibsCreatedSoFar = GibsCreatedSoFar + 1
    }
    //Destroy Player
instance_destroy ()
