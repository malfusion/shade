package
{
	import flashx.textLayout.formats.BackgroundColor;
	
	import managers.BackgroundManager;

	public class Controller
	{
		private var _backgroundManager:BackgroundManager;
		
		public function Controller()
		{
			_backgroundManager = new BackgroundManager();
			
		}
		
		public function getBackgroundManager():BackgroundManager{
			if(_backgroundManager)
				return _backgroundManager;
			return null;
		}
		
		
	}
}