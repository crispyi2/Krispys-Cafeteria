package;

import flash.filters.ColorMatrixFilter;
import flash.geom.Matrix;
import flash.geom.Point;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.addons.effects.chainable.FlxEffectSprite;
import flixel.addons.effects.chainable.FlxWaveEffect;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.system.FlxSound;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.ui.FlxBar;
import flixel.util.FlxColor;

using flixel.util.FlxSpriteUtil;

enum Command
{
	CloseDoor;
}
  
  class Terminal extends FlxTypedGroup<FlxSprite>
 {
     var drive:FlxText;
	 var screen:FlxSprite;
	 var cmd:Command;

     public function new()
     {
         super();
		 
		 screen = new FlxSprite().loadGraphic("assets/images/terminalAssets/TerminalScreen.png");
		 add(screen);
     }

     public function updateCamera()
     {
         
     }
 }
