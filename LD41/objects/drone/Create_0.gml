/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 570E8336
/// @DnDArgument : "code" "beamAngle = 0;$(13_10)beamSweepDir = 1;$(13_10)beamEchoAngle = -10;$(13_10)beamEchoSweepDir = 1;$(13_10)beamEcho2Angle = -20;$(13_10)beamEcho2SweepDir = 1;$(13_10)beamAngleSpread = 30;$(13_10)beamAngleMax = beamAngleSpread;$(13_10)beamAngleMin = -beamAngleSpread;$(13_10)beamSweepSpeed = abs(beamAngleMax - beamAngleMin) / (room_speed * 2);$(13_10)beamLength = 128;$(13_10)$(13_10)tractorBeamPower = 10;$(13_10)$(13_10)alertLevel = 0;$(13_10)alertIncreaseSpeed = room_speed / 10;$(13_10)alertDecreaseSpeed = room_speed / 30;$(13_10)alertCautious = room_speed / 2 * alertIncreaseSpeed;$(13_10)maxAlertLevel = room_speed * alertIncreaseSpeed;$(13_10)$(13_10)patrolPoints[0] = id;$(13_10)currentPatrolPoint = 0;$(13_10)"
beamAngle = 0;
beamSweepDir = 1;
beamEchoAngle = -10;
beamEchoSweepDir = 1;
beamEcho2Angle = -20;
beamEcho2SweepDir = 1;
beamAngleSpread = 30;
beamAngleMax = beamAngleSpread;
beamAngleMin = -beamAngleSpread;
beamSweepSpeed = abs(beamAngleMax - beamAngleMin) / (room_speed * 2);
beamLength = 128;

tractorBeamPower = 10;

alertLevel = 0;
alertIncreaseSpeed = room_speed / 10;
alertDecreaseSpeed = room_speed / 30;
alertCautious = room_speed / 2 * alertIncreaseSpeed;
maxAlertLevel = room_speed * alertIncreaseSpeed;

patrolPoints[0] = id;
currentPatrolPoint = 0;