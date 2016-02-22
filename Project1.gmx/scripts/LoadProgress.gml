if file_exists("Progress.txt")
{

    //Open the save file
    SaveFile = file_text_open_read("Progress.txt")
    
    //Read the save file
    file_text_readln (SaveFile) //"Room:"
    RoomToGoTo = file_text_read_real (SaveFile)
    if room_exists (RoomToGoTo)
    {
        room_goto(RoomToGoTo)
    }
    //Close Save File
    file_text_close (SaveFile)
    oMenu.Mode = "Game"
}
