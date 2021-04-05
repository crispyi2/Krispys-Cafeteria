package;

 import flixel.FlxG;
 import flixel.input.mouse.FlxMouse;

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