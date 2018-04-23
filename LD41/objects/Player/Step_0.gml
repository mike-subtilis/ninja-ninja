/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 486F1B21
/// @DnDArgument : "code" "/// forces$(13_10)$(13_10)// inputHandler.xInput;$(13_10)// inputHandler.accelInput;$(13_10)// inputHandler.leanInput;$(13_10)$(13_10)var frontTireX = x + dcos(phy_rotation) * 10;$(13_10)var frontTireY = y + dsin(phy_rotation) * 10;$(13_10)$(13_10)var rearTireX = x - dcos(phy_rotation) * 10;$(13_10)var rearTireY = y - dsin(phy_rotation) * 10;$(13_10)$(13_10)// acceleration / braking$(13_10)if (inputHandler.accelInput > 0) {$(13_10)	var accelForce = inputHandler.accelInput * myBikeStats.maxAccel;$(13_10)	physics_apply_force(rearTireX, rearTireY, dcos(phy_rotation) * accelForce, dsin(phy_rotation) * accelForce);$(13_10)}$(13_10)else if (inputHandler.accelInput < 0) {$(13_10)	// use myBikeStats.maxReverseVelocity$(13_10)	var brakeForce = -inputHandler.accelInput * myBikeStats.maxBrake;$(13_10)	physics_apply_force(frontTireX, frontTireY, -dcos(phy_rotation) * brakeForce, -dsin(phy_rotation) * brakeForce);$(13_10)	physics_apply_force(rearTireX, rearTireY, -dcos(phy_rotation) * brakeForce, -dsin(phy_rotation) * brakeForce);$(13_10)}$(13_10)$(13_10)// turn forces$(13_10)var turnForce = inputHandler.turnInput * myBikeStats.maxTurn * phy_speed * room_speed / myBikeStats.maxLinearVelocity;$(13_10)physics_apply_force(frontTireX, frontTireY, dcos(phy_rotation + 90) * turnForce, dsin(phy_rotation + 90) * turnForce);$(13_10)$(13_10)// lean forces$(13_10)var leanForce = inputHandler.leanInput * myBikeStats.maxLean * phy_speed * room_speed / myBikeStats.maxLinearVelocity;$(13_10)physics_apply_force(frontTireX, frontTireY, dcos(phy_rotation + 90) * leanForce, dsin(phy_rotation + 90) * leanForce);$(13_10)physics_apply_force(rearTireX, rearTireY, dcos(phy_rotation + 90) * leanForce, dsin(phy_rotation + 90) * leanForce);$(13_10)$(13_10)// ------------------------$(13_10)// friction forces$(13_10)//  in direction of tire, at maxLinearVelocity, frictionForce = -maxAccel$(13_10)var divisor = power(myBikeStats.maxLinearVelocity, 3) / myBikeStats.maxAccel;$(13_10)var frontTireAngle = phy_rotation;$(13_10)var frictionX = -0.5 * power(phy_linear_velocity_x, 3) / divisor;$(13_10)var frictionY = -0.5 * power(phy_linear_velocity_y, 3) / divisor;$(13_10)physics_apply_force(frontTireX, frontTireY, frictionX, frictionY);$(13_10)$(13_10)//  perpendicular to tires$(13_10)//physics_apply_force(frontTireX, frontTireY, -dcos(phy_rotation) * turnFrictionForce, -dsin(phy_rotation) * turnFrictionForce);$(13_10)$(13_10)$(13_10)// parallel to tire... linear velocity projected onto tire angle... always parellel so just use linear velocity$(13_10)// perpendicular to tire... linear velocity projected onto perpendicular tire angle$(13_10)var rearTireAngle = phy_rotation;$(13_10)frictionX = -0.5 * power(phy_linear_velocity_x, 3) / divisor;$(13_10)frictionY = -0.5 * power(phy_linear_velocity_y, 3) / divisor;$(13_10)physics_apply_force(rearTireX, rearTireY, frictionX, frictionY);$(13_10)$(13_10)var crossProduct = phy_linear_velocity_x / myBikeStats.maxLinearVelocity * dsin(phy_rotation) -$(13_10)	phy_linear_velocity_y / myBikeStats.maxLinearVelocity * dcos(phy_rotation);$(13_10)var rearPerpendicularMagnitude = crossProduct * myBikeStats.maxPerpendicularFriction;$(13_10)frictionX = -rearPerpendicularMagnitude * phy_linear_velocity_x / myBikeStats.maxLinearVelocity;$(13_10)frictionY = -rearPerpendicularMagnitude * phy_linear_velocity_y / myBikeStats.maxLinearVelocity;$(13_10)physics_apply_force(rearTireX, rearTireY, frictionX, frictionY);$(13_10)"
/// forces

// inputHandler.xInput;
// inputHandler.accelInput;
// inputHandler.leanInput;

var frontTireX = x + dcos(phy_rotation) * 10;
var frontTireY = y + dsin(phy_rotation) * 10;

var rearTireX = x - dcos(phy_rotation) * 10;
var rearTireY = y - dsin(phy_rotation) * 10;

// acceleration / braking
if (inputHandler.accelInput > 0) {
	var accelForce = inputHandler.accelInput * myBikeStats.maxAccel;
	physics_apply_force(rearTireX, rearTireY, dcos(phy_rotation) * accelForce, dsin(phy_rotation) * accelForce);
}
else if (inputHandler.accelInput < 0) {
	// use myBikeStats.maxReverseVelocity
	var brakeForce = -inputHandler.accelInput * myBikeStats.maxBrake;
	physics_apply_force(frontTireX, frontTireY, -dcos(phy_rotation) * brakeForce, -dsin(phy_rotation) * brakeForce);
	physics_apply_force(rearTireX, rearTireY, -dcos(phy_rotation) * brakeForce, -dsin(phy_rotation) * brakeForce);
}

// turn forces
var turnForce = inputHandler.turnInput * myBikeStats.maxTurn * phy_speed * room_speed / myBikeStats.maxLinearVelocity;
physics_apply_force(frontTireX, frontTireY, dcos(phy_rotation + 90) * turnForce, dsin(phy_rotation + 90) * turnForce);

// lean forces
var leanForce = inputHandler.leanInput * myBikeStats.maxLean * phy_speed * room_speed / myBikeStats.maxLinearVelocity;
physics_apply_force(frontTireX, frontTireY, dcos(phy_rotation + 90) * leanForce, dsin(phy_rotation + 90) * leanForce);
physics_apply_force(rearTireX, rearTireY, dcos(phy_rotation + 90) * leanForce, dsin(phy_rotation + 90) * leanForce);

// ------------------------
// friction forces
//  in direction of tire, at maxLinearVelocity, frictionForce = -maxAccel
var divisor = power(myBikeStats.maxLinearVelocity, 3) / myBikeStats.maxAccel;
var frontTireAngle = phy_rotation;
var frictionX = -0.5 * power(phy_linear_velocity_x, 3) / divisor;
var frictionY = -0.5 * power(phy_linear_velocity_y, 3) / divisor;
physics_apply_force(frontTireX, frontTireY, frictionX, frictionY);

//  perpendicular to tires
//physics_apply_force(frontTireX, frontTireY, -dcos(phy_rotation) * turnFrictionForce, -dsin(phy_rotation) * turnFrictionForce);


// parallel to tire... linear velocity projected onto tire angle... always parellel so just use linear velocity
// perpendicular to tire... linear velocity projected onto perpendicular tire angle
var rearTireAngle = phy_rotation;
frictionX = -0.5 * power(phy_linear_velocity_x, 3) / divisor;
frictionY = -0.5 * power(phy_linear_velocity_y, 3) / divisor;
physics_apply_force(rearTireX, rearTireY, frictionX, frictionY);

var crossProduct = phy_linear_velocity_x / myBikeStats.maxLinearVelocity * dsin(phy_rotation) -
	phy_linear_velocity_y / myBikeStats.maxLinearVelocity * dcos(phy_rotation);
var rearPerpendicularMagnitude = crossProduct * myBikeStats.maxPerpendicularFriction;
frictionX = -rearPerpendicularMagnitude * phy_linear_velocity_x / myBikeStats.maxLinearVelocity;
frictionY = -rearPerpendicularMagnitude * phy_linear_velocity_y / myBikeStats.maxLinearVelocity;
physics_apply_force(rearTireX, rearTireY, frictionX, frictionY);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 73DFE1C4
/// @DnDArgument : "code" "/// exhaust$(13_10)$(13_10)if (phy_speed > 0.2) {$(13_10)   effect_create_below(ef_smoke, x - dcos(phy_rotation) * 12, y - dsin(phy_rotation) * 12, 0, c_gray);$(13_10)}$(13_10)"
/// exhaust

if (phy_speed > 0.2) {
   effect_create_below(ef_smoke, x - dcos(phy_rotation) * 12, y - dsin(phy_rotation) * 12, 0, c_gray);
}