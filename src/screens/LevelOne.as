package screens
{
	import starling.display.Sprite;
	
	public class LevelOne extends Sprite
	{
		public function LevelOne()
		{
			super();
		}
		
		public function disposeTemporarily():void
		{
			this.visible = false;
			//Remember to remove all event listeners here.
		}
		
		public function initialize():void
		{
			this.visible=true;
			//Remember to add event listeners
		}
	}
}