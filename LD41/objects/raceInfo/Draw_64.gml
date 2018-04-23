/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 52C39119
/// @DnDArgument : "code" "if (countdown >= 0) {$(13_10)	var lightWidth = sprite_get_width(trafficLightsSprite);$(13_10)	var lightMargin = 20;$(13_10)	var lightX = display_get_gui_width() / 2 - lightWidth / 2 - lightMargin - lightWidth;$(13_10)	var lightY = display_get_gui_height() / 2 - lightWidth / 2;$(13_10)	if (countdown == 3) {$(13_10)		draw_sprite(trafficLightsSprite, 0, lightX, lightY);$(13_10)		draw_sprite(trafficLightsSprite, 0, lightX + lightWidth + lightMargin, lightY);$(13_10)		draw_sprite(trafficLightsSprite, 0, lightX + lightWidth * 2 + lightMargin * 2, lightY);$(13_10)	} else if (countdown == 2) {$(13_10)		draw_sprite(trafficLightsSprite, 1, lightX, lightY);$(13_10)		draw_sprite(trafficLightsSprite, 0, lightX + lightWidth + lightMargin, lightY);$(13_10)		draw_sprite(trafficLightsSprite, 0, lightX + lightWidth * 2 + lightMargin * 2, lightY);	$(13_10)	} else if (countdown == 1) {$(13_10)		draw_sprite(trafficLightsSprite, 0, lightX, lightY);$(13_10)		draw_sprite(trafficLightsSprite, 2, lightX + lightWidth + lightMargin, lightY);$(13_10)		draw_sprite(trafficLightsSprite, 0, lightX + lightWidth * 2 + lightMargin * 2, lightY);$(13_10)	} else if (countdown == 0) {$(13_10)		draw_sprite(trafficLightsSprite, 0, lightX, lightY);$(13_10)		draw_sprite(trafficLightsSprite, 0, lightX + lightWidth + lightMargin, lightY);$(13_10)		draw_sprite(trafficLightsSprite, 3, lightX + lightWidth * 2 + lightMargin * 2, lightY);$(13_10)	}$(13_10)}$(13_10)$(13_10)if (isStarted) {$(13_10)	var text = getTimeAsString(totalTime);$(13_10)	$(13_10)	var timeX = display_get_gui_width() / 2 - 20;$(13_10)	draw_text(timeX, 20, text);$(13_10)}$(13_10)"
if (countdown >= 0) {
	var lightWidth = sprite_get_width(trafficLightsSprite);
	var lightMargin = 20;
	var lightX = display_get_gui_width() / 2 - lightWidth / 2 - lightMargin - lightWidth;
	var lightY = display_get_gui_height() / 2 - lightWidth / 2;
	if (countdown == 3) {
		draw_sprite(trafficLightsSprite, 0, lightX, lightY);
		draw_sprite(trafficLightsSprite, 0, lightX + lightWidth + lightMargin, lightY);
		draw_sprite(trafficLightsSprite, 0, lightX + lightWidth * 2 + lightMargin * 2, lightY);
	} else if (countdown == 2) {
		draw_sprite(trafficLightsSprite, 1, lightX, lightY);
		draw_sprite(trafficLightsSprite, 0, lightX + lightWidth + lightMargin, lightY);
		draw_sprite(trafficLightsSprite, 0, lightX + lightWidth * 2 + lightMargin * 2, lightY);	
	} else if (countdown == 1) {
		draw_sprite(trafficLightsSprite, 0, lightX, lightY);
		draw_sprite(trafficLightsSprite, 2, lightX + lightWidth + lightMargin, lightY);
		draw_sprite(trafficLightsSprite, 0, lightX + lightWidth * 2 + lightMargin * 2, lightY);
	} else if (countdown == 0) {
		draw_sprite(trafficLightsSprite, 0, lightX, lightY);
		draw_sprite(trafficLightsSprite, 0, lightX + lightWidth + lightMargin, lightY);
		draw_sprite(trafficLightsSprite, 3, lightX + lightWidth * 2 + lightMargin * 2, lightY);
	}
}

if (isStarted) {
	var text = getTimeAsString(totalTime);
	
	var timeX = display_get_gui_width() / 2 - 20;
	draw_text(timeX, 20, text);
}