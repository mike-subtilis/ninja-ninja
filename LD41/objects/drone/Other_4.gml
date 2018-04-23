/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1F2C9E5F
/// @DnDArgument : "code" "patrolPointX[0] = x;$(13_10)patrolPointY[0] = y;$(13_10)for (var i = 0; i < array_length_1d(patrolPoints); i++) {$(13_10)	with (patrolPoints[i]) {$(13_10)		other.patrolPointX[i] = x;$(13_10)		other.patrolPointY[i] = y;$(13_10)	}$(13_10)}$(13_10)"
patrolPointX[0] = x;
patrolPointY[0] = y;
for (var i = 0; i < array_length_1d(patrolPoints); i++) {
	with (patrolPoints[i]) {
		other.patrolPointX[i] = x;
		other.patrolPointY[i] = y;
	}
}