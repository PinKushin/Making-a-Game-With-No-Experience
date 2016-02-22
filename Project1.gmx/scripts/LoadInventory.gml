if file_exists("Inventory.txt") && instance_exists(oPlayer)
{
    with oPlayer
    {
        //Open the save file
        SaveFile = file_text_open_read("Inventory.txt")
        
        //Read the save file
        file_text_readln (SaveFile)
        
        i = 0
        //While we haven't reached the end of the file
        while file_text_eof (SaveFile) = false
        {
            WeaponType = file_text_read_real (SaveFile)
            instance_create (x,y,WeaponType)
            file_text_readln (SaveFile)
            i = i + 1
        }
        //Close Save File
        file_text_close (SaveFile)
    }    
}
