/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0BD57BC4
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 29834C3F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "8"
/// @DnDArgument : "color" "$FFFF0526"
effect_create_below(8, x + 0, y + 0, 0, $FFFF0526 & $ffffff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0534EBBE
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "coins"
coins += 10;