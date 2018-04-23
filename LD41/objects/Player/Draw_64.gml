/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 73A439C6
/// @DnDArgument : "code" "//draw_text(10, 10, string(phy_linear_velocity_x) + ", " + string(phy_linear_velocity_y));$(13_10)//draw_text(10, 30, string(x) + ", " + string(y));$(13_10)//draw_text(10, 50, string(phy_rotation));$(13_10)//draw_text(10, 70, string(darctan2(phy_linear_velocity_y, phy_linear_velocity_x)));$(13_10)$(13_10)var guiMargin = 20;$(13_10)var speedBarWidth = 20;$(13_10)var speedBarHeight = 150;$(13_10)var lapCountHeight = 20;$(13_10)var lapCountWidth = 50;$(13_10)$(13_10)var guiX = guiMargin;$(13_10)var guiY = guiMargin + lapCountHeight + guiMargin;$(13_10)var lapCountX = guiX;$(13_10)if (image_index == 1) {$(13_10)	guiX = display_get_gui_width() - guiMargin - speedBarWidth;$(13_10)	lapCountX = display_get_gui_width() - guiMargin - lapCountWidth;$(13_10)}$(13_10)$(13_10)draw_set_alpha(0.8);$(13_10)draw_set_color(c_black);$(13_10)draw_rectangle(guiX, guiY, guiX + speedBarWidth, guiY + speedBarHeight, false);$(13_10)var speedPercent = phy_speed * room_speed / myBikeStats.maxLinearVelocity;$(13_10)var speedColour = merge_color($44aaf0, $4444ff, speedPercent);$(13_10)draw_set_color(speedColour);$(13_10)draw_rectangle(guiX, guiY + speedBarHeight * (1 - speedPercent), guiX + speedBarWidth, guiY + speedBarHeight, false);$(13_10)draw_set_color(c_white);$(13_10)draw_rectangle(guiX, guiY, guiX + speedBarWidth, guiY + speedBarHeight, true);$(13_10)$(13_10)draw_set_alpha(1);$(13_10)$(13_10)draw_text(lapCountX, guiMargin, string(myInfo.currentLap) + " / " + string(raceInfo.totalLaps));$(13_10)"
//draw_text(10, 10, string(phy_linear_velocity_x) + ", " + string(phy_linear_velocity_y));
//draw_text(10, 30, string(x) + ", " + string(y));
//draw_text(10, 50, string(phy_rotation));
//draw_text(10, 70, string(darctan2(phy_linear_velocity_y, phy_linear_velocity_x)));

var guiMargin = 20;
var speedBarWidth = 20;
var speedBarHeight = 150;
var lapCountHeight = 20;
var lapCountWidth = 50;

var guiX = guiMargin;
var guiY = guiMargin + lapCountHeight + guiMargin;
var lapCountX = guiX;
if (image_index == 1) {
	guiX = display_get_gui_width() - guiMargin - speedBarWidth;
	lapCountX = display_get_gui_width() - guiMargin - lapCountWidth;
}

draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(guiX, guiY, guiX + speedBarWidth, guiY + speedBarHeight, false);
var speedPercent = phy_speed * room_speed / myBikeStats.maxLinearVelocity;
var speedColour = merge_color($44aaf0, $4444ff, speedPercent);
draw_set_color(speedColour);
draw_rectangle(guiX, guiY + speedBarHeight * (1 - speedPercent), guiX + speedBarWidth, guiY + speedBarHeight, false);
draw_set_color(c_white);
draw_rectangle(guiX, guiY, guiX + speedBarWidth, guiY + speedBarHeight, true);

draw_set_alpha(1);

draw_text(lapCountX, guiMargin, string(myInfo.currentLap) + " / " + string(raceInfo.totalLaps));