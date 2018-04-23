/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4EB6AA03
/// @DnDArgument : "code" "if (raceInfo.isStarted && !raceInfo.isFinished) {$(13_10)	if (other.myInfo.isStartlinePending) {$(13_10)		other.myInfo.currentLap++;$(13_10)		other.myInfo.isStartlinePending = false;$(13_10)		if (other.myInfo.currentLap > raceInfo.totalLaps) {$(13_10)			other.myInfo.finishTime = raceInfo.totalTime;$(13_10)			other.myInfo.isFinished = true;$(13_10)			show_debug_message("FINISHED!");$(13_10)			checkForAllPlayersFinished();$(13_10)		} else {$(13_10)			show_debug_message("STARTING LAP " + string(other.myInfo.currentLap));$(13_10)		}$(13_10)	}$(13_10)}$(13_10)"
if (raceInfo.isStarted && !raceInfo.isFinished) {
	if (other.myInfo.isStartlinePending) {
		other.myInfo.currentLap++;
		other.myInfo.isStartlinePending = false;
		if (other.myInfo.currentLap > raceInfo.totalLaps) {
			other.myInfo.finishTime = raceInfo.totalTime;
			other.myInfo.isFinished = true;
			show_debug_message("FINISHED!");
			checkForAllPlayersFinished();
		} else {
			show_debug_message("STARTING LAP " + string(other.myInfo.currentLap));
		}
	}
}