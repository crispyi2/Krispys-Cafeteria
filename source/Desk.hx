package;

 import flixel.FlxSprite;
 import flixel.util.FlxColor;
 import flixel.input.mouse.FlxMouseEventManager;

 class Desk extends FlxSprite
 {
     public function new(x:Float = 0, y:Float = 0)
     {
         super(x, y);
		 loadGraphic("assets/images/officeAssets/Desk.png");
     }
 }