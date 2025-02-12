/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4FA2EA0C
/// @DnDArgument : "obj" "Object1"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "Object1"
var l4FA2EA0C_0 = false;
l4FA2EA0C_0 = instance_exists(Object1);
if(!l4FA2EA0C_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 769DA1AD
	/// @DnDParent : 4FA2EA0C
	exit;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 258D2C3F
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 32A50DCF
/// @DnDArgument : "font" "font_opensans"
draw_set_font(font_opensans);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 20012EAC
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""coins: ""
/// @DnDArgument : "var" "object1.coins"
draw_text(x + 0, y + 0, string("coins: ") + string(object1.coins));