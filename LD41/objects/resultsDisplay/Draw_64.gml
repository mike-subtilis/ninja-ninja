/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4440A7D8
/// @DnDArgument : "code" "var resultsMargin = display_get_gui_width() * 0.05;$(13_10)var resultsMargin = display_get_gui_height() * 0.05;$(13_10)var resultsWidth = display_get_gui_width() * 0.9;$(13_10)var resultsHeight = display_get_gui_height() * 0.9;$(13_10)$(13_10)draw_set_color($444444);$(13_10)draw_rectangle(resultsMargin, resultsMargin, $(13_10)	resultsMargin + resultsWidth, resultsMargin + resultsHeight, $(13_10)	false);$(13_10)draw_set_color($eeeeee);$(13_10)draw_rectangle(resultsMargin, resultsMargin, $(13_10)	resultsMargin + resultsWidth, resultsMargin + resultsHeight, $(13_10)	true);$(13_10)$(13_10)var orderedResults;$(13_10)var numberOfPlayers = instance_number(Player);$(13_10)for (var i = 0; i < numberOfPlayers; i++) {$(13_10)	orderedResults[i] = instance_find(Player, i);$(13_10)}$(13_10)$(13_10)for (var i = 0; i < numberOfPlayers - 1; i++) {	$(13_10)	for (var j = i + 1; j < numberOfPlayers; j++) {$(13_10)		if (orderedResults[i].myInfo.finishTime > orderedResults[j].myInfo.finishTime) {$(13_10)			var swap = orderedResults[i];$(13_10)			orderedResults[i] = orderedResults[j];$(13_10)			orderedResults[j] = swap;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)for (var i = 1; i <= numberOfPlayers; i++) {$(13_10)	var positionText;$(13_10)	if (i == 1) {$(13_10)		positionText = "1st";$(13_10)	} else if (i == 2) {$(13_10)		positionText = "2nd";$(13_10)	} else if (i == 3) {$(13_10)		positionText = "3rd";$(13_10)	} else {$(13_10)		positionText = string(i) + "th"; // at least handles 4-20	$(13_10)	}$(13_10)	$(13_10)	var resultY = resultsMargin * (2 + i);$(13_10)	draw_text(display_get_gui_width() * 0.25, resultY, positionText);$(13_10)	draw_sprite(orderedResults[i - 1].sprite_index, orderedResults[i - 1].image_index, display_get_gui_width() * 0.4, resultY);$(13_10)$(13_10)	var timeDisplayText = getTimeAsString(orderedResults[i - 1].myInfo.finishTime);$(13_10)	draw_text(display_get_gui_width() * 0.6, resultY, timeDisplayText);$(13_10)}$(13_10)$(13_10)draw_set_color(c_white);$(13_10)"
var resultsMargin = display_get_gui_width() * 0.05;
var resultsMargin = display_get_gui_height() * 0.05;
var resultsWidth = display_get_gui_width() * 0.9;
var resultsHeight = display_get_gui_height() * 0.9;

draw_set_color($444444);
draw_rectangle(resultsMargin, resultsMargin, 
	resultsMargin + resultsWidth, resultsMargin + resultsHeight, 
	false);
draw_set_color($eeeeee);
draw_rectangle(resultsMargin, resultsMargin, 
	resultsMargin + resultsWidth, resultsMargin + resultsHeight, 
	true);

var orderedResults;
var numberOfPlayers = instance_number(Player);
for (var i = 0; i < numberOfPlayers; i++) {
	orderedResults[i] = instance_find(Player, i);
}

for (var i = 0; i < numberOfPlayers - 1; i++) {	
	for (var j = i + 1; j < numberOfPlayers; j++) {
		if (orderedResults[i].myInfo.finishTime > orderedResults[j].myInfo.finishTime) {
			var swap = orderedResults[i];
			orderedResults[i] = orderedResults[j];
			orderedResults[j] = swap;
		}
	}
}

for (var i = 1; i <= numberOfPlayers; i++) {
	var positionText;
	if (i == 1) {
		positionText = "1st";
	} else if (i == 2) {
		positionText = "2nd";
	} else if (i == 3) {
		positionText = "3rd";
	} else {
		positionText = string(i) + "th"; // at least handles 4-20	
	}
	
	var resultY = resultsMargin * (2 + i);
	draw_text(display_get_gui_width() * 0.25, resultY, positionText);
	draw_sprite(orderedResults[i - 1].sprite_index, orderedResults[i - 1].image_index, display_get_gui_width() * 0.4, resultY);

	var timeDisplayText = getTimeAsString(orderedResults[i - 1].myInfo.finishTime);
	draw_text(display_get_gui_width() * 0.6, resultY, timeDisplayText);
}

draw_set_color(c_white);