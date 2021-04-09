package;

 import flixel.FlxSprite;
 import flixel.util.FlxColor;
 import flixel.group.FlxGroup.FlxTypedGroup;

 class Office extends FlxSprite
 {
 
     public function new(x:Float = 0, y:Float = 0)
     {
         super(x, y);
		 loadGraphic("assets/images/officeAssets/Office.png");
		 
     }
 }