package;

 import flixel.FlxSprite;
 import flixel.util.FlxColor;

 class Room extends FlxSprite
 {
     public function new(x:Float = 0, y:Float = 0)
     {
         super(x, y);
		  makeGraphic(16, 16, FlxColor.GRAY);
     }
 }