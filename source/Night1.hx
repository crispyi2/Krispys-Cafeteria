package;

import flixel.FlxState;
import flixel.text.FlxText;
import flixel.FlxSprite;
import flixel.FlxG;

class Night1 extends FlxState
{
	var room:Room;
	var left_door:LeftDoor;
	var right_door:RightDoor;
	override public function create()
	{
		room = new Room(20, 20);
 		add(room);
		
		left_door = new LeftDoor(80, 20);
		add(left_door);
		
		right_door = new RightDoor(120, 20);
		add(right_door);
	
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
