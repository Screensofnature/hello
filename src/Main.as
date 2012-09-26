package 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import game.core.GameFacade;
	
	/**
	 * ...
	 * @author screensofnature
	 */
	public class Main extends MovieClip 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			GameFacade.getInstance().start(this);
		}
		
	}
	
}