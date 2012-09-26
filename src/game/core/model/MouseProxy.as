package game.core.model 
{
	import game.core.config.GeneralNotifications;
	import org.puremvc.as3.patterns.proxy.Proxy;
	
	/**
	 * ...
	 * @author screensofnature
	 */
	public class MouseProxy extends Proxy 
	{
		public static const NAME:String = "MouseProxy";
		
		private var _mouseX:Number = 0;
		private var _mouseY:Number = 0;
		
		public function MouseProxy() 
		{
			super(NAME);
		}
		
		public function setMouse(x:Number, y:Number):void
		{
			_mouseX = x;
			_mouseY = y;
			sendNotification(GeneralNotifications.MOUSE_UPDATE);
		}
		
		public function get mouseX():Number 
		{
			return _mouseX;
		}
		
		public function get mouseY():Number 
		{
			return _mouseY;
		}
		
	}

}