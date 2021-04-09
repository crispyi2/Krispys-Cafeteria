package;

 import flixel.FlxG;
 import flixel.FlxSprite;
 import flixel.ui.FlxButton;
 import flixel.group.FlxGroup.FlxTypedGroup;
 import flixel.text.FlxText;
 import flixel.util.FlxColor;

 using flixel.util.FlxSpriteUtil;

 class HUD extends FlxTypedGroup<FlxSprite>
 {
     var batteryPercent:FlxText;
	 var Time:FlxText;
	 var batterySprite:FlxSprite;
	 var LookLeft:FlxButton;

     public function new()
     {
         super();
         batteryPercent = new FlxText(16, 2, 0, "100 %", 20);
		 Time = new FlxText(-16, 2, FlxG.width, "12 AM", 20);
		 Time.alignment = "right";
		 add(batteryPercent);
		 add(Time);
		 forEach(function(sprite) sprite.scrollFactor.set(0, 0));
     }

     public function updateHUD(battery:Int, time:Int)
     {
         batteryPercent.text = battery + " %";
		 Time.text = time + " AM";
     }
 }