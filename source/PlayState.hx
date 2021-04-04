package;

import flixel.FlxState;
import flixel.text.FlxText;
import flixel.FlxG;
import flixel.util.FlxTimer;
import haxe.Timer;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		
		var name = new flixel.text.FlxText(0, 0, 0, "Crispy's Cafeteria", 30);
    	name.screenCenter();
    	add(name);
		var loading = new flixel.text.FlxText(0, 500, 0, "Is Loading", 20);
		loading.screenCenter(X);
		add(loading);
		var timer = new haxe.Timer(5000);
		timer.run = function() { FlxG.switchState(new Night1()); }
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
