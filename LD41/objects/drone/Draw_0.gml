/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3DB5651A
/// @DnDArgument : "code" "draw_self();$(13_10)$(13_10)// draw beam$(13_10)var x1 = x + dcos(phy_rotation) * 16;$(13_10)var y1 = y + dsin(phy_rotation) * 16;$(13_10)var x2 = x1 + dcos(phy_rotation + beamAngle) * beamLength;$(13_10)var y2 = y1 + dsin(phy_rotation + beamAngle) * beamLength;$(13_10)var xEcho = x1 + dcos(phy_rotation + beamEchoAngle) * beamLength;$(13_10)var yEcho = y1 + dsin(phy_rotation + beamEchoAngle) * beamLength;$(13_10)var xEcho2 = x1 + dcos(phy_rotation + beamEcho2Angle) * beamLength;$(13_10)var yEcho2 = y1 + dsin(phy_rotation + beamEcho2Angle) * beamLength;$(13_10)var xMax = x1 + dcos(phy_rotation + beamAngleMax) * beamLength;$(13_10)var yMax = y1 + dsin(phy_rotation + beamAngleMax) * beamLength;$(13_10)var xMin = x1 + dcos(phy_rotation + beamAngleMin) * beamLength;$(13_10)var yMin = y1 + dsin(phy_rotation + beamAngleMin) * beamLength;$(13_10)$(13_10)var beamColour = $ff6c3f;$(13_10)if (alertLevel > 0 && alertLevel <= alertCautious) {$(13_10)	beamColour = $0088ff;$(13_10)} else if (alertLevel > alertCautious) {$(13_10)	beamColour = $0000ff;$(13_10)}$(13_10)$(13_10)draw_set_alpha(0.5);$(13_10)draw_set_color(beamColour);$(13_10)draw_triangle(x1, y1, xMax, yMax, xMin, yMin, false);$(13_10)draw_line_width_color(x1, y1, xEcho2, yEcho2, 1, beamColour, beamColour);$(13_10)draw_line_width_color(x1, y1, xEcho, yEcho, 3, beamColour, beamColour);$(13_10)draw_line_width_color(x1, y1, x2, y2, 7, beamColour, beamColour);$(13_10)draw_line_width_color(x1, y1, x2, y2, 1, c_white, c_white);$(13_10)draw_set_alpha(1);$(13_10)draw_set_color(c_white);$(13_10)"
draw_self();

// draw beam
var x1 = x + dcos(phy_rotation) * 16;
var y1 = y + dsin(phy_rotation) * 16;
var x2 = x1 + dcos(phy_rotation + beamAngle) * beamLength;
var y2 = y1 + dsin(phy_rotation + beamAngle) * beamLength;
var xEcho = x1 + dcos(phy_rotation + beamEchoAngle) * beamLength;
var yEcho = y1 + dsin(phy_rotation + beamEchoAngle) * beamLength;
var xEcho2 = x1 + dcos(phy_rotation + beamEcho2Angle) * beamLength;
var yEcho2 = y1 + dsin(phy_rotation + beamEcho2Angle) * beamLength;
var xMax = x1 + dcos(phy_rotation + beamAngleMax) * beamLength;
var yMax = y1 + dsin(phy_rotation + beamAngleMax) * beamLength;
var xMin = x1 + dcos(phy_rotation + beamAngleMin) * beamLength;
var yMin = y1 + dsin(phy_rotation + beamAngleMin) * beamLength;

var beamColour = $ff6c3f;
if (alertLevel > 0 && alertLevel <= alertCautious) {
	beamColour = $0088ff;
} else if (alertLevel > alertCautious) {
	beamColour = $0000ff;
}

draw_set_alpha(0.5);
draw_set_color(beamColour);
draw_triangle(x1, y1, xMax, yMax, xMin, yMin, false);
draw_line_width_color(x1, y1, xEcho2, yEcho2, 1, beamColour, beamColour);
draw_line_width_color(x1, y1, xEcho, yEcho, 3, beamColour, beamColour);
draw_line_width_color(x1, y1, x2, y2, 7, beamColour, beamColour);
draw_line_width_color(x1, y1, x2, y2, 1, c_white, c_white);
draw_set_alpha(1);
draw_set_color(c_white);