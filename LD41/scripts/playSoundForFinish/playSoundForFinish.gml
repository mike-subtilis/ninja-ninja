/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5D4BF247
/// @DnDArgument : "code" "var finishedCount = 0;$(13_10)$(13_10)with (Player) {$(13_10)	if (myInfo.isFinished) {$(13_10)		finishedCount++;$(13_10)	}$(13_10)}$(13_10)$(13_10)if (finishedCount == 1) {$(13_10)	audio_play_sound(FirstPlaceSound, 50, false);$(13_10)} else if (finishedCount == 2) {$(13_10)	audio_play_sound(SecondPlaceSound, 50, false);	$(13_10)}$(13_10)"
var finishedCount = 0;

with (Player) {
	if (myInfo.isFinished) {
		finishedCount++;
	}
}

if (finishedCount == 1) {
	audio_play_sound(FirstPlaceSound, 50, false);
} else if (finishedCount == 2) {
	audio_play_sound(SecondPlaceSound, 50, false);	
}