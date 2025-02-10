/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 086F0FBE
/// @DnDComment : if we are jumping$(13_10)
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4038B613
	/// @DnDParent : 086F0FBE
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_jump"
	sprite_index = spr_player_jump;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7749F40D
/// @DnDComment : if falling
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 537EC2E7
	/// @DnDParent : 7749F40D
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_idle"
	sprite_index = spr_player_idle;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 35494A1C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Object2"
/// @DnDSaveInfo : "object" "Object2"
var l35494A1C_0 = instance_place(x + 0, y + 2, [Object2]);
if ((l35494A1C_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E56D525
	/// @DnDParent : 35494A1C
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 675F7C9B
		/// @DnDParent : 4E56D525
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_walk"
		sprite_index = spr_player_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 4D355487
		/// @DnDParent : 4E56D525
		/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1 * abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B7CBA0A
	/// @DnDParent : 35494A1C
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	if(move_x >= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 733A6AA9
		/// @DnDParent : 3B7CBA0A
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_walk"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk"
		sprite_index = spr_player_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 1F02F5CA
		/// @DnDParent : 3B7CBA0A
		/// @DnDArgument : "xscale" "abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A43EA15
	/// @DnDParent : 35494A1C
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4B0360EC
		/// @DnDParent : 3A43EA15
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_idle"
		/// @DnDSaveInfo : "spriteind" "spr_player_idle"
		sprite_index = spr_player_idle;
		image_index += 0;
	}
}