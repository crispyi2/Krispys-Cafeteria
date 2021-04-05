package;

import flixel.FlxState;
import flixel.text.FlxText;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.FlxCamera;
import flixel.input.mouse.FlxMouse;
import flixel.input.FlxPointer;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.system.FlxAssets;

class Night1 extends FlxState
{
	var room:Room;
	var left_door:LeftDoor;
	var right_door:RightDoor;
	var gameCamera:FlxCamera;
	var uiCamera:FlxCamera;
	var tween:FlxTween;
	var hud:HUD;
	
	override public function create()
	{
		room = new Room(0, 0);
		room.scale.set(2, 2);
 		add(room);
		
		left_door = new LeftDoor(40, 20);
		add(left_door);
		
		right_door = new RightDoor(80, 20);
		add(right_door);
	
		hud = new HUD();
 		add(hud);
	
		super.create();
		
		var nighttxt = new FlxSprite();
		nighttxt.loadGraphic("assets/images/nightText/Night1_Text.png");
		nighttxt.scale.set(0.3, 0.3);
		nighttxt.screenCenter(X);
		add(nighttxt);
		
		var gameCamera = new FlxCamera(0, 0, FlxG.width, FlxG.height);
		var uiCamera = new FlxCamera(0, 0, FlxG.width, FlxG.height);
		add(gameCamera);
		add(uiCamera);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
