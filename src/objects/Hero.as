package objects
{
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.textures.Texture;
	import starling.display.Image;
	
	
	public class Hero extends Sprite
	{
		
		private var heroArt:Image;
		
		public function Hero()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			spawnHero();
		}
		
		private function spawnHero():void
		{
			heroArt=new Image(Assets.getTexture("HeroNormalStanding"));
			this.addChild(heroArt);
			heroArt.x = stage.width/5;
			heroArt.y = stage.height-stage.height*(9/20);
		}
	}
}