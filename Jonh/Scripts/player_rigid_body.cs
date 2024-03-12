using Godot;
using System;
using System.Diagnostics;

public partial class player_rigid_body : RigidBody3D
{
	int speed = 5000;

	Vector3 velocity, lastFrameposition;
	Vector3 snapVector;

	SpringArm3D springArm;
	Node3D springParent;



	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		springArm = GetNode<SpringArm3D>("SpringArm3D");
		springParent = GetNode<Node3D>("SpringParent");
	}

	public override void _PhysicsProcess(double delta)
	{
		Vector3 direction = Vector3.Zero;
	   	direction.X = Input.GetAxis("move_left", "move_right");
		direction.Z = Input.GetAxis("move_forward", "move_back");

		if(direction == Vector3.Zero){
			return;
		}

		direction = direction.Rotated(Vector3.Up, springArm.Rotation.Y).Normalized();
		
		velocity.X = direction.X * speed;
		velocity.Z = direction.Z * speed;
		
		
		ApplyCentralForce(velocity * (float)delta);
	}

	public override void _Process(double delta)
	{
		//springArm.Translate(springArm.Position-springParent.Position);


		//springArm.Translate(-1*(lastFrameposition-Position));
		//lastFrameposition = Position;
	}
}
