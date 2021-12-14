package;

import flixel.FlxG;
using StringTools;

class Config
{
	
	public static var accuracy:String;
	public static var healthMultiplier:Float;
	public static var healthDrainMultiplier:Float;

	public static function resetSettings():Void{

		FlxG.save.data.accuracy = "simple";
		FlxG.save.data.healthMultiplier = 1.0;
		FlxG.save.data.healthDrainMultiplier = 1.0;
		reload();

	}
	
	public static function reload():Void
	{
		accuracy = FlxG.save.data.accuracy;
		healthMultiplier = FlxG.save.data.healthMultiplier;
		healthDrainMultiplier = FlxG.save.data.healthDrainMultiplier;
	}
	
	public static function write(
								accuracyW:String,
								healthMultiplierW:Float, 
								healthDrainMultiplierW:Float
								):Void
	{

		FlxG.save.data.accuracy = accuracyW;
		FlxG.save.data.healthMultiplier = healthMultiplierW;
		FlxG.save.data.healthDrainMultiplier = healthDrainMultiplierW;

		FlxG.save.flush();
		
		reload();

	}
	
	public static function configCheck():Void
	{
		if(FlxG.save.data.accuracy == null)
			FlxG.save.data.accuracy = "simple";
		if(FlxG.save.data.healthMultiplier == null)
			FlxG.save.data.healthMultiplier = 1.0;
		if(FlxG.save.data.healthDrainMultiplier == null)
			FlxG.save.data.healthDrainMultiplier = 1.0;

		if(FlxG.save.data.ee1 == null)
			FlxG.save.data.ee1 = false;
	}
	
}