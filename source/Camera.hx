package;

 import flixel.FlxG;

 class Room extends FlxSprite
 {
     public function new()
     {
         super();
		 
		FlxG.mouse.screenX
  		FlxG.mouse.screenY
  		FlxG.mouse.getScreenPosition(); // returns screenX / screenY as a FlxPoint
     }
 }