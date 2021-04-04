package;

import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.FlxG;

class MenuState extends FlxState
{
	var playButton:FlxButton;
	override public function create()
	{
		super.create();
		
		playButton = new FlxButton(0, 0, "Play", clickPlay);
 		add(playButton);
		
		playButton.screenCenter();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
	
	function clickPlay()
 	{
     	FlxG.switchState(new PlayState());
 	}
}
