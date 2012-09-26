package game.core.model 
{
	import flash.display.Sprite;
	import flash.events.KeyboardEvent;
	import org.puremvc.as3.patterns.proxy.Proxy;
	import game.core.config.GeneralNotifications;
	
	
	/**
	 * ...
	 * @author screensofnature
	 */
	public class KeyboardProxy extends Proxy 
	{
		private var _lastKey:uint = 0;
		public static const NAME:String = "KeyboardProxy";
		
		public function KeyboardProxy() 
		{
			super(NAME);
		}
		public function setKey(keyCode:uint):void
		{
			_lastKey = keyCode;
			sendNotification(GeneralNotifications.KEY_UPDATE,keyCode);
		}
		
		public function get lastKey():uint 
		{
			return _lastKey;
		}
		
		//override public function onRegister():void{
		//super.onRegister();
		//(getData() as Sprite).addEventListener(KeyboardEvent.KEY_DOWN, handlerKeyboardEvent);
		//(getData() as Sprite).addEventListener(KeyboardEvent.KEY_UP, handlerKeyboardEvent);
		//
		//private function handlerKeyboardEvent(event:KeyboardEvent):void
	//{
		//if (event.keyCode==37 || event.keyCode==39 || event.keyCode==38 || event.keyCode==40)
			//sendNotification(GeneralNotifications.KEY_UP,event.keyCode);
		//if (event.keyCode==65 || event.keyCode==68 || event.keyCode==83 || event.keyCode==87)
			//sendNotification(GeneralNotifications.KEY_UP,event.keyCode);
		//if (event.keyCode==65 && event.keyCode==87)
			//sendNotification(GeneralNotifications.KEY_UP,event.keyCode);
		//if (event.keyCode==68 && event.keyCode==87)
			//sendNotification(GeneralNotifications.KEY_UP,event.keyCode);
		//if (event.keyCode==65 && event.keyCode==83)
			//sendNotification(GeneralNotifications.KEY_UP,event.keyCode);
		//if (event.keyCode==68 && event.keyCode==83)
			//sendNotification(GeneralNotifications.KEY_UP,event.keyCode);
		//if (event.keyCode >=65 && event.keyCode <=90)
			//sendNotification(GeneralNotifications.LETTER_IS_PRESSED,event.charCode);
			//}
	}
	
	//private function handlerKeyboardEvent(event:KeyboardEvent):void 
	//{
		//if (event.keyCode==37 || event.keyCode==39 || event.keyCode==38 || event.keyCode==40)
			//sendNotification(GeneralNotifications.HELLO_FLASH_MOVE,event.keyCode);
	//}
		//public function getKey(event.keyCode);
	//}
	//}
}