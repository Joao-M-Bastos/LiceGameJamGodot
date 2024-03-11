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
		//springArm.Translate(springArm.Position-springParent.Position);
	}

    public override void _UnhandledInput(InputEvent _event)
    {
		Vector3 rotation = RotationDegrees;
        if(_event is InputEventMouseMotion motion){
			rotation.X -= motion.Relative.Y * mouseSensitivity;
			rotation.X = Math.Clamp(rotation.X, -90, 30);

			rotation.Y -= motion.Relative.X * mouseSensitivity;
			rotation.Y = Mathf.Wrap(rotation.Y, 0, 360);
		}

		RotationDegrees = rotation;
    }
}
