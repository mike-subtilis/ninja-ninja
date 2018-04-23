/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6CA61F05
/// @DnDArgument : "code" "if (isStarted && !isFinished) {$(13_10)	totalSteps++;$(13_10)	totalTime = totalSteps / room_speed; // time in seconds$(13_10)}$(13_10)"
if (isStarted && !isFinished) {
	totalSteps++;
	totalTime = totalSteps / room_speed; // time in seconds
}