/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 20A7F96C
/// @DnDArgument : "code" "beamAngle += beamSweepDir * beamSweepSpeed;$(13_10)$(13_10)if (beamSweepDir == 1 && beamAngle > beamAngleMax) {$(13_10)	beamSweepDir = -1;$(13_10)} else if (beamSweepDir == -1 && beamAngle < beamAngleMin) {$(13_10)	beamSweepDir = 1;$(13_10)}$(13_10)$(13_10)$(13_10)beamEchoAngle += beamEchoSweepDir * beamSweepSpeed;$(13_10)$(13_10)if (beamEchoSweepDir == 1 && beamEchoAngle > beamAngleMax) {$(13_10)	beamEchoSweepDir = -1;$(13_10)} else if (beamEchoSweepDir == -1 && beamEchoAngle < beamAngleMin) {$(13_10)	beamEchoSweepDir = 1;$(13_10)}$(13_10)$(13_10)$(13_10)beamEcho2Angle += beamEcho2SweepDir * beamSweepSpeed;$(13_10)$(13_10)if (beamEcho2SweepDir == 1 && beamEcho2Angle > beamAngleMax) {$(13_10)	beamEcho2SweepDir = -1;$(13_10)} else if (beamEcho2SweepDir == -1 && beamEcho2Angle < beamAngleMin) {$(13_10)	beamEcho2SweepDir = 1;$(13_10)}$(13_10)"
beamAngle += beamSweepDir * beamSweepSpeed;

if (beamSweepDir == 1 && beamAngle > beamAngleMax) {
	beamSweepDir = -1;
} else if (beamSweepDir == -1 && beamAngle < beamAngleMin) {
	beamSweepDir = 1;
}


beamEchoAngle += beamEchoSweepDir * beamSweepSpeed;

if (beamEchoSweepDir == 1 && beamEchoAngle > beamAngleMax) {
	beamEchoSweepDir = -1;
} else if (beamEchoSweepDir == -1 && beamEchoAngle < beamAngleMin) {
	beamEchoSweepDir = 1;
}


beamEcho2Angle += beamEcho2SweepDir * beamSweepSpeed;

if (beamEcho2SweepDir == 1 && beamEcho2Angle > beamAngleMax) {
	beamEcho2SweepDir = -1;
} else if (beamEcho2SweepDir == -1 && beamEcho2Angle < beamAngleMin) {
	beamEcho2SweepDir = 1;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7D85AD20
/// @DnDArgument : "code" "// move to the next patrol point$(13_10)$(13_10)if (alertLevel == 0) {$(13_10)	if ((abs(x - patrolPointX[currentPatrolPoint]) < 5) &&$(13_10)		(abs(y - patrolPointY[currentPatrolPoint]) < 5)) {$(13_10)		currentPatrolPoint++;$(13_10)		if (currentPatrolPoint >= array_length_1d(patrolPointX)) {$(13_10)			currentPatrolPoint = 0;$(13_10)		}$(13_10)	}$(13_10)$(13_10)	if ((abs(x - patrolPointX[currentPatrolPoint]) > 5) ||$(13_10)		(abs(y - patrolPointY[currentPatrolPoint]) > 5)) {$(13_10)		phy_rotation = darctan2(patrolPointY[currentPatrolPoint] - y, patrolPointX[currentPatrolPoint] - x);$(13_10)		physics_apply_force(x, y, dcos(phy_rotation) * 5, dsin(phy_rotation) * 5);$(13_10)	}$(13_10)} else if (alertLevel > 0 && alertLevel <= alertCautious) {$(13_10)	// cautious: rotate in place to track player$(13_10)	for (var i = 0; i < instance_number(Player); i++) {$(13_10)		var potentialDetected = instance_find(Player, i);$(13_10)		var angleToPlayer = darctan2(potentialDetected.y - y, potentialDetected.x - x);		$(13_10)		var distanceToPlayer = point_distance(x, y, potentialDetected.x, potentialDetected.y);$(13_10)		if (angle_difference(angleToPlayer, phy_rotation) < beamAngleSpread &&$(13_10)				distanceToPlayer < beamLength) {$(13_10)			phy_rotation = angleToPlayer;$(13_10)			break;$(13_10)		}$(13_10)	}$(13_10)} else {$(13_10)	// alert: move a little way towards player$(13_10)	for (var i = 0; i < instance_number(Player); i++) {$(13_10)		var potentialDetected = instance_find(Player, i);$(13_10)		var angleToPlayer = darctan2(potentialDetected.y - y, potentialDetected.x - x);		$(13_10)		var distanceToPlayer = point_distance(x, y, potentialDetected.x, potentialDetected.y);$(13_10)		if (angle_difference(angleToPlayer, phy_rotation) < beamAngleSpread &&$(13_10)				distanceToPlayer < beamLength) {$(13_10)			phy_rotation = angleToPlayer;$(13_10)			physics_apply_force(x, y, dcos(phy_rotation) * 5, dsin(phy_rotation) * 5);$(13_10)			break;$(13_10)		}$(13_10)	}	$(13_10)}$(13_10)"
// move to the next patrol point

if (alertLevel == 0) {
	if ((abs(x - patrolPointX[currentPatrolPoint]) < 5) &&
		(abs(y - patrolPointY[currentPatrolPoint]) < 5)) {
		currentPatrolPoint++;
		if (currentPatrolPoint >= array_length_1d(patrolPointX)) {
			currentPatrolPoint = 0;
		}
	}

	if ((abs(x - patrolPointX[currentPatrolPoint]) > 5) ||
		(abs(y - patrolPointY[currentPatrolPoint]) > 5)) {
		phy_rotation = darctan2(patrolPointY[currentPatrolPoint] - y, patrolPointX[currentPatrolPoint] - x);
		physics_apply_force(x, y, dcos(phy_rotation) * 5, dsin(phy_rotation) * 5);
	}
} else if (alertLevel > 0 && alertLevel <= alertCautious) {
	// cautious: rotate in place to track player
	for (var i = 0; i < instance_number(Player); i++) {
		var potentialDetected = instance_find(Player, i);
		var angleToPlayer = darctan2(potentialDetected.y - y, potentialDetected.x - x);		
		var distanceToPlayer = point_distance(x, y, potentialDetected.x, potentialDetected.y);
		if (angle_difference(angleToPlayer, phy_rotation) < beamAngleSpread &&
				distanceToPlayer < beamLength) {
			phy_rotation = angleToPlayer;
			break;
		}
	}
} else {
	// alert: move a little way towards player
	for (var i = 0; i < instance_number(Player); i++) {
		var potentialDetected = instance_find(Player, i);
		var angleToPlayer = darctan2(potentialDetected.y - y, potentialDetected.x - x);		
		var distanceToPlayer = point_distance(x, y, potentialDetected.x, potentialDetected.y);
		if (angle_difference(angleToPlayer, phy_rotation) < beamAngleSpread &&
				distanceToPlayer < beamLength) {
			phy_rotation = angleToPlayer;
			physics_apply_force(x, y, dcos(phy_rotation) * 5, dsin(phy_rotation) * 5);
			break;
		}
	}	
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6E1ED002
/// @DnDArgument : "code" "/// player detection$(13_10)$(13_10)// beamAngle = 0;$(13_10)// beamLength = 0;$(13_10)$(13_10)var sensorX1 = x + dcos(phy_rotation) * 16;$(13_10)var sensorY1 = y + dsin(phy_rotation) * 16;$(13_10)var sensorX2 = sensorX1 + dcos(phy_rotation + beamAngle) * beamLength;$(13_10)var sensorY2 = sensorY1 + dsin(phy_rotation + beamAngle) * beamLength;$(13_10)$(13_10)if (collision_line(sensorX1, sensorY1, sensorX2, sensorY2, Player, false, false)) {$(13_10)	alertLevel += alertIncreaseSpeed;$(13_10)	if (alertLevel > maxAlertLevel) {$(13_10)		alertLevel = maxAlertLevel;$(13_10)	}$(13_10)} else {$(13_10)	alertLevel -= alertDecreaseSpeed;$(13_10)	if (alertLevel < 0) {$(13_10)		alertLevel = 0;$(13_10)	}$(13_10)}$(13_10)"
/// player detection

// beamAngle = 0;
// beamLength = 0;

var sensorX1 = x + dcos(phy_rotation) * 16;
var sensorY1 = y + dsin(phy_rotation) * 16;
var sensorX2 = sensorX1 + dcos(phy_rotation + beamAngle) * beamLength;
var sensorY2 = sensorY1 + dsin(phy_rotation + beamAngle) * beamLength;

if (collision_line(sensorX1, sensorY1, sensorX2, sensorY2, Player, false, false)) {
	alertLevel += alertIncreaseSpeed;
	if (alertLevel > maxAlertLevel) {
		alertLevel = maxAlertLevel;
	}
} else {
	alertLevel -= alertDecreaseSpeed;
	if (alertLevel < 0) {
		alertLevel = 0;
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 54775A1D
/// @DnDArgument : "code" "/// tractor beam$(13_10)$(13_10)for (var i = 0; i < instance_number(Player); i++) {$(13_10)	var potentialDetected = instance_find(Player, i);$(13_10)	var angleToPlayer = darctan2(potentialDetected.y - y, potentialDetected.x - x);$(13_10)	var distanceToPlayer = point_distance(x, y, potentialDetected.x, potentialDetected.y);$(13_10)	if (angle_difference(angleToPlayer, phy_rotation) < beamAngleSpread &&$(13_10)			distanceToPlayer < beamLength) {$(13_10)		with (potentialDetected) {$(13_10)			physics_apply_force(x, y, dcos(angleToPlayer + 180) * other.tractorBeamPower, dsin(angleToPlayer + 180) * other.tractorBeamPower);	$(13_10)		}$(13_10)	}$(13_10)}$(13_10)"
/// tractor beam

for (var i = 0; i < instance_number(Player); i++) {
	var potentialDetected = instance_find(Player, i);
	var angleToPlayer = darctan2(potentialDetected.y - y, potentialDetected.x - x);
	var distanceToPlayer = point_distance(x, y, potentialDetected.x, potentialDetected.y);
	if (angle_difference(angleToPlayer, phy_rotation) < beamAngleSpread &&
			distanceToPlayer < beamLength) {
		with (potentialDetected) {
			physics_apply_force(x, y, dcos(angleToPlayer + 180) * other.tractorBeamPower, dsin(angleToPlayer + 180) * other.tractorBeamPower);	
		}
	}
}