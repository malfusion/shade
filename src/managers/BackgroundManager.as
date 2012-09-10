package managers
{
	import starling.display.Image;
	import starling.textures.Texture;
	
	public class BackgroundManager
	{
		private var _currBackground:Image;
		public function BackgroundManager()
		{
			
		}
		
		public function getBackground():Image{
			return _currBackground;
		}
		
		public function setLevel(level:String):void
		{
			if(level == "level1"){
				_currBackground = new Image(Assets.getTexture("Alley"));
			}
			
		}
	}
}