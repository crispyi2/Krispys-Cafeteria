package;

import flixel.FlxState;
import flixel.text.FlxText;

class Night1 extends FlxState
{
	override public function create()
	{
		super.create();
		
		var text = new flixel.text.FlxText(0, 0, 0, "Night1", 64);
    	text.screenCenter();
    	add(text);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
