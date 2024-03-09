using Godot;
using System;

public partial class SpringArm3D : Godot.SpringArm3D
{
	float mouseSensitivity = 0.5f;
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		TopLevel = true;
		Input.MouseMode = Input.MouseModeEnum.Captured;
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}

    public override void _UnhandledInput(InputEvent _event)
    {
        if(_event is InputEventMouseMotion motion){
			RotationDegrees.X -= motion.Relative.Y;
		}
    }
}
