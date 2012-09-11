package screens
{
	import managers.BackgroundManager;
	
	import starling.display.Sprite;
	import starling.textures.Texture;
	import starling.display.Image;
	
	public class LevelOne extends Sprite
	{
		private var _background:Image;
		private var _controller:Controller;
		public const LEVEL1:String = "level1";
		
		public function LevelOne(controller:Controller)
		{
			_controller = controller;
			_controller.getBackgroundManager().setLevel(LEVEL1);
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
			_background = _controller.getBackgroundManager().getBackground();
			this.addChild(_background);
			//Remember to add event listeners
		}
	}
}