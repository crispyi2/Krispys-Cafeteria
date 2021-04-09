package;

import flixel.math.FlxAngle;
import flixel.math.FlxPoint;
import flixel.ui.FlxButton;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.FlxCamera;
import flixel.util.FlxColor;
import flixel.input.mouse.FlxMouse;
import flixel.addons.ui.FlxUI9SliceSprite;
import flash.geom.Rectangle;
import flixel.input.FlxPointer;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.system.FlxAssets;
import flixel.input.mouse.FlxMouseEventManager;

class Night1 extends FlxState
{
	var mouse:FlxSprite;
	var office:Office;
	var door:Door;
	var vent:Vent;
	var tween:FlxTween;
	var hud:HUD;
	var battery:Int = 100;
	var time:Int = 12;
	var desk:Desk;
	var computer:FlxSprite;
	var LookLeft:FlxButton;
	var grabbedPos:FlxPoint = new FlxPoint(-1, -1); // For camera scrolling
	var initialCameraScroll:FlxPoint = new FlxPoint(0, 0); // Ditto ^

	override public function create()
	{
		office = new Office(100, 0);
		add(office);

		desk = new Desk(180, 180);
		add(desk);

		door = new Door(40, 20);
		add(door);

		vent = new Vent(80, 20);
		add(vent);

		hud = new HUD();
		add(hud);

		mouse = new FlxSprite(0, 0);
		mouse.setPosition(FlxG.mouse.getWorldPosition().x - mouse.width / 2, FlxG.mouse.getWorldPosition().y - mouse.height / 2);
		mouse.makeGraphic(16, 16, FlxColor.BLUE);
		
		super.create();

		LookLeft = new FlxButton(0, 0, "", lookLeft);
		LookLeft.loadGraphic("assets/images/officeButtons/Office_UI_Left_Button.png");
		LookLeft.scale.set(0.5, 0.5);
		LookLeft.screenCenter(Y);
		LookLeft.alpha = 0.5;
		add(LookLeft);

		computer = new FlxSprite(200, 200);
		computer.loadGraphic("assets/images/officeAssets/Computer.png", true, 357, 299);
		add(computer);

		FlxG.plugins.add(new FlxMouseEventManager());

		var nighttxt = new FlxSprite();
		nighttxt.loadGraphic("assets/images/nightText/Night1_Text.png");
		nighttxt.scale.set(0.2, 0.2);
		nighttxt.y = 300;
		nighttxt.screenCenter(X);
		nighttxt.scrollFactor.set(0, 0);
		add(nighttxt);

		
		camera.bgColor = 0x3D3D3D;
	}

	function clickComputer() {}

	function lookLeft() {}

	override public function update(elapsed:Float)
	{
		office.setPosition(FlxG.mouse.getScreenPosition().x * -0.7, FlxG.mouse.getScreenPosition().y  * -0.7);
		vent.setPosition(FlxG.mouse.getScreenPosition().x * -0.7, FlxG.mouse.getScreenPosition().y  * -0.7);
		door.setPosition(FlxG.mouse.getScreenPosition().x * -0.7, FlxG.mouse.getScreenPosition().y  * -0.7);
		desk.setPosition(1175 + office.x, 848 + office.y);
		computer.setPosition(1363 + office.x, 693 + office.y);
		super.update(elapsed);
	}
}