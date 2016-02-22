//Resolution Code

//Fullscreen
window_set_fullscreen(true)

//Display Info
global.ScreenWidth = display_get_width()
global.ScreenHeight = display_get_height()

/*Windowed
window_set_fullscreen(false)

window_set_size(global.ScreenWidth,global.ScreenHeight)*/

///Room size on-screen
view_wview = global.ScreenWidth
view_hview = global.ScreenHeight 

///Screen Size
view_wport = global.ScreenWidth
view_hport = global.ScreenHeight


///Game-Maker Code !IMPORTANT!
surface_resize(application_surface, global.ScreenWidth, global.ScreenHeight)


