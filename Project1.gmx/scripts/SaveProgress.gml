if instance_exists (oPlayer)
{
    with oPlayer
    {
        //Create the save file
        SaveFile = file_text_open_write ("Progress.txt")
        
        //Write 2 lines of text to it
        file_text_write_string (SaveFile, "Room:")
        file_text_writeln (SaveFile)
        
        file_text_write_string (SaveFile, string(room))
        file_text_writeln (SaveFile)
        
        //Close the save file. ALWAYS DO THIS IF YOU OPEN A FILE!!!
        file_text_close (SaveFile)
    }
}
