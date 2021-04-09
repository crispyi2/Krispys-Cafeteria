package;

 import flixel.FlxSprite;
 import flixel.ui.FlxButton;
 import flixel.util.FlxColor;
 import flixel.input.mouse.FlxMouseEventManager;

 class Computer extends FlxButton
 {
    public function new(x:Float = 0, y:Float = 0, ?Text:String)
    {
         super(x, y, Text, Onclick);
		 loadGraphic("assets/images/officeAssets/Computer_Placeholder.png");
    }
 }