package screens
{
	import starling.display.Sprite;
	import starling.events.Event;
	import objects.Hero;
	
	public class LevelOne extends Sprite
	{
		private var hero:Hero;
		
		public function LevelOne()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			drawGame();
		}
		
		private function drawGame():void
		{
			
			hero=new Hero();
			this.addChild(hero);
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