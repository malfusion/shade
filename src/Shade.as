package
{
	import flash.display.Sprite;
	
	import net.hires.debug.Stats;
	
	import starling.display.Image;
	import starling.textures.Texture;
	import starling.core.Starling;
	
	import starling.core.Starling;
	
	//Set frame rate, width and height of stage, and background color of off-stage screen.
	[SWF(frameRate = "60", width="960", height="640", backgroundColor="0x000000")]
	
	public class Shade extends Sprite
	{
		private var stats:Stats; //Mr.Doob Hi-Res Stats declared
		private var myStarling:Starling;
		
		public function Shade()
		{
			stats = new Stats();
			this.addChild(stats);
			
			myStarling = new Starling(Game, stage);
			myStarling.antiAliasing = 1;
			myStarling.start();
		}
	}
}