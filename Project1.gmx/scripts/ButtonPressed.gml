///ButtonPressed(Button Text)

ButtonText = argument0
Result = false

//Find the Corners of our box
BoxTop = CurrentY
TextTop = BoxTop + Margin
BoxBottom = BoxTop + Margin + string_height(ButtonText) + Margin
HalfTextWidth = string_width(ButtonText) / 2
BoxLeft = x - HalfTextWidth - (Margin * 2)
BoxRight = x + HalfTextWidth + (Margin * 2)

draw_set_colour (make_colour_hsv(0,200,128))

//See if the Cursor is hovering over it
if device_mouse_x_to_gui(0)>BoxLeft and device_mouse_x_to_gui(0)<BoxRight and device_mouse_y_to_gui(0)>BoxTop and device_mouse_y_to_gui(0)<BoxBottom
{
    draw_set_alpha(1)
    if device_mouse_check_button_pressed(0,mb_left)
    {
        Result = true
    }
}
else
{
    draw_set_alpha(0.5)
}

draw_rectangle (BoxLeft,BoxTop,BoxRight,BoxBottom,false)

draw_set_alpha(1)

draw_set_colour(c_white)

CurrentY = TextTop
DrawTextandUpdateCurrentY(ButtonText)

CurrentY = CurrentY + (Margin * 2)

return Result
