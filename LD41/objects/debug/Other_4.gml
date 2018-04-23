/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 33CB432C
/// @DnDArgument : "code" "if (global.NumberOfPlayers == 1) {$(13_10)	var player2 = instance_find(Player, 1);$(13_10)	instance_destroy(player2);$(13_10)}$(13_10)"
if (global.NumberOfPlayers == 1) {
	var player2 = instance_find(Player, 1);
	instance_destroy(player2);
}