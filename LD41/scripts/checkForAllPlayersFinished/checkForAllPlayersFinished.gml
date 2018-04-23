/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 63189D3A
/// @DnDArgument : "code" "var isAnyPlayerNotFinished = false;$(13_10)$(13_10)with (Player) {$(13_10)	if (!myInfo.isFinished) {$(13_10)		isAnyPlayerNotFinished = true;$(13_10)	}$(13_10)}$(13_10)$(13_10)if (!isAnyPlayerNotFinished) {$(13_10)	with (raceInfo) {$(13_10)		isFinished = true;$(13_10)		alarm_set(2, room_speed * 2);	$(13_10)	}$(13_10)}$(13_10)"
var isAnyPlayerNotFinished = false;

with (Player) {
	if (!myInfo.isFinished) {
		isAnyPlayerNotFinished = true;
	}
}

if (!isAnyPlayerNotFinished) {
	with (raceInfo) {
		isFinished = true;
		alarm_set(2, room_speed * 2);	
	}
}