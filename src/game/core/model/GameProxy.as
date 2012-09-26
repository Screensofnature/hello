package game.core.model 
{
	import org.puremvc.as3.patterns.proxy.Proxy;
	
	/**
	 * ...
	 * @author screensofnature
	 */
	public class GameProxy extends Proxy 
	{
		public static const NAME:String = "GameProxy";
		public var gameError:uint = 0;
		public var gameString:Array = new Array();
		public var alienPosition:int = 0;
		public var pacmanPosition:int = 4;
		public var interval:uint = 0;
		public var gameOver:Boolean = false;
		
		public function GameProxy()
		{
			super(NAME);
			
		}
		
	}

}