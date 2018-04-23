/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1742CE3E
/// @DnDArgument : "code" "/// keyboard inputs$(13_10)$(13_10)turnInput = 0;$(13_10)accelInput = 0;$(13_10)leanInput = 0;$(13_10)$(13_10)if (keyboard_check(turnLeftKey)) {$(13_10)	turnInput -= 1;$(13_10)}$(13_10)if (keyboard_check(turnRightKey)) {$(13_10)	turnInput += 1;$(13_10)}$(13_10)$(13_10)if (keyboard_check(accelerateKey)) {$(13_10)	accelInput += 1;$(13_10)}$(13_10)if (keyboard_check(brakeKey)) {$(13_10)	accelInput -= 1;$(13_10)}$(13_10)$(13_10)if (keyboard_check(leanLeftKey)) {$(13_10)	leanInput -= 1;$(13_10)}$(13_10)if (keyboard_check(leanRightKey)) {$(13_10)	leanInput += 1;$(13_10)}$(13_10)"
/// keyboard inputs

turnInput = 0;
accelInput = 0;
leanInput = 0;

if (keyboard_check(turnLeftKey)) {
	turnInput -= 1;
}
if (keyboard_check(turnRightKey)) {
	turnInput += 1;
}

if (keyboard_check(accelerateKey)) {
	accelInput += 1;
}
if (keyboard_check(brakeKey)) {
	accelInput -= 1;
}

if (keyboard_check(leanLeftKey)) {
	leanInput -= 1;
}
if (keyboard_check(leanRightKey)) {
	leanInput += 1;
}