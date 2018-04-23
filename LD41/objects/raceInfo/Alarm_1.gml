/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 346116C0
/// @DnDArgument : "code" "countdown--;$(13_10)$(13_10)if ((countdown == 2) || (countdown == 1)) {$(13_10)	audio_play_sound(startCountdownSound, 50, false);$(13_10)}$(13_10)if (countdown == 0) {$(13_10)	audio_play_sound(startGoSound, 50, false);$(13_10)	isStarted = true;	$(13_10)}$(13_10)$(13_10)if (countdown >= 0) {$(13_10)	alarm_set(1, room_speed);$(13_10)}$(13_10)$(13_10)"
countdown--;

if ((countdown == 2) || (countdown == 1)) {
	audio_play_sound(startCountdownSound, 50, false);
}
if (countdown == 0) {
	audio_play_sound(startGoSound, 50, false);
	isStarted = true;	
}

if (countdown >= 0) {
	alarm_set(1, room_speed);
}