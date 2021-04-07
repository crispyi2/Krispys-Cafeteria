package;

 import flixel.FlxSprite;
 import flixel.util.FlxColor;
 import flixel.input.mouse.FlxMouseEventManager;

 class Computer extends FlxSprite
 {
    public function new(x:Float = 0, y:Float = 0)
    {
         super(x, y);
		 loadGraphic("assets/images/officeAssets/Computer_Placeholder.png");
		 
		 FlxMouseEventManager.add(this, onMouseDown, onMouseUp, onMouseOver, onMouseOut);
		 
		 function onMouseDown(computer:FlxSprite) { color = 0x00000000; }
		 function onMouseUp(computer:FlxSprite) {}
		 function onMouseOver(computer:FlxSprite) { color = 0xFFFFFF; }
		 function onMouseOut(computer:FlxSprite) {color = 0x00000000;}
    }
 }