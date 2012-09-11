package
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;
	
	public class Assets
	{
		[Embed(source="../assets/alley.jpg")]
		private static const Alley:Class;
		
		private static var textures:Dictionary = new Dictionary();
		
		public static function getTexture(name:String):Texture
		{
			if(textures[name] == undefined){
				var bmp:Bitmap = Bitmap(new Assets[name]());
				textures[name] = Texture.fromBitmap(bmp);
			}
			return textures[name];
			
		}
		
	}
}