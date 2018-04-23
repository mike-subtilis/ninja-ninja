/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7852C1B7
/// @DnDArgument : "code" "var xx = argument[0];$(13_10)var yy = argument[1];$(13_10)$(13_10)var tileLayer = layer_get_id("TrackTileLayer");$(13_10)var tilemapId = layer_tilemap_get_id(tileLayer);$(13_10)var road = tilemap_get_at_pixel(tilemapId, xx, yy);$(13_10)show_debug_message("(" + string(xx) + ", " + string(yy) + ") " +$(13_10)	" road tile = " + string(road));$(13_10)$(13_10)if (road == 0 || road == 1) {$(13_10)	show_debug_message("SAND!");$(13_10)	return 0; // sand$(13_10)} else {$(13_10)	return 1; // road$(13_10)}$(13_10)"
var xx = argument[0];
var yy = argument[1];

var tileLayer = layer_get_id("TrackTileLayer");
var tilemapId = layer_tilemap_get_id(tileLayer);
var road = tilemap_get_at_pixel(tilemapId, xx, yy);
show_debug_message("(" + string(xx) + ", " + string(yy) + ") " +
	" road tile = " + string(road));

if (road == 0 || road == 1) {
	show_debug_message("SAND!");
	return 0; // sand
} else {
	return 1; // road
}