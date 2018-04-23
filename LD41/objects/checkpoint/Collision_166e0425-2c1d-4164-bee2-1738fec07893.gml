/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4EB6AA03
/// @DnDArgument : "code" "if (raceInfo.isStarted && !raceInfo.isFinished) {$(13_10)	if (!other.myInfo.isStartlinePending) {$(13_10)		other.myInfo.isStartlinePending = true;$(13_10)	}$(13_10)}$(13_10)"
if (raceInfo.isStarted && !raceInfo.isFinished) {
	if (!other.myInfo.isStartlinePending) {
		other.myInfo.isStartlinePending = true;
	}
}