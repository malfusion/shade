package
{
	import starling.display.Sprite;
	
	import events.NavigationEvent;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	import screens.LevelOne;
	
	public class Game extends Sprite
	{
		private var screenLevelOne:LevelOne;
		private var _controller:Controller
		public function Game()
		{
			super();
			_controller = new Controller();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			trace("Starling Framework Initialized");
			
			this.addEventListener(events.NavigationEvent.CHANGE_SCREEN, onChangeScreen);
			
			//Initialize the first level. This will later be changed to initialize a welcome screen when we add one.
			screenLevelOne = new LevelOne(_controller);
			this.addChild(screenLevelOne);
			screenLevelOne.initialize();
		}
		
		private function onChangeScreen(event:NavigationEvent):void
		{
			//Initialize wanted screen and dispose of other screens here, based on event parameter
			//Again, no need to change this yet. Only when we add a welcome screen in order to navigate to multiple screens.
		}
	}
}