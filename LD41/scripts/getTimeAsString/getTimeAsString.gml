/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5048356F
/// @DnDArgument : "code" "var totalTime = argument[0];$(13_10)$(13_10)var totalWholeSeconds = floor(totalTime);$(13_10)var totalMinutes = totalWholeSeconds div 60;$(13_10)var totalSeconds = totalWholeSeconds mod 60;$(13_10)var totalTenths = floor((totalTime - totalWholeSeconds) * 10)$(13_10)	$(13_10)var text = string(totalSeconds) + "." + string(totalTenths);$(13_10)if (totalMinutes > 0) {$(13_10)	if (totalSeconds < 10) {$(13_10)		text = "0" + text;$(13_10)	}$(13_10)	text = string(totalMinutes) + ":" + text;$(13_10)}$(13_10)$(13_10)return text;$(13_10)"
var totalTime = argument[0];

var totalWholeSeconds = floor(totalTime);
var totalMinutes = totalWholeSeconds div 60;
var totalSeconds = totalWholeSeconds mod 60;
var totalTenths = floor((totalTime - totalWholeSeconds) * 10)
	
var text = string(totalSeconds) + "." + string(totalTenths);
if (totalMinutes > 0) {
	if (totalSeconds < 10) {
		text = "0" + text;
	}
	text = string(totalMinutes) + ":" + text;
}

return text;