/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 346116C0
/// @DnDArgument : "code" "countdown--;$(13_10)if (countdown >= 0) {$(13_10)	alarm_set(1, room_speed);$(13_10)} else {$(13_10)	isStarted = true;	$(13_10)}$(13_10)"
countdown--;
if (countdown >= 0) {
	alarm_set(1, room_speed);
} else {
	isStarted = true;	
}