package game.core.view 
{
	import flash.display.Sprite;
	import game.core.config.GeneralNotifications;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	/**
	 * ...
	 * @author screensofnature
	 */
	public class SquareMediator extends BaseMediator 
	{
		public static const NAME:String = "SquareMediator";
		
		private var _square:Sprite = null;
		
		public function SquareMediator(viewComponent:Object) 
		{
			super(NAME, viewComponent);
		}
		
		override public function onRegister():void 
		{
			super.onRegister();
			_square = new Sprite();
			_square.graphics.lineStyle(5);
			_square.graphics.drawRect(-10, -10, 20, 20);
			//content.addChild(_square);
		}
		
		override public function listNotificationInterests():Array 
		{
			return [GeneralNotifications.MOUSE_UPDATE];
		}
		
		override public function handleNotification(notification:INotification):void 
		{
			super.handleNotification(notification);
			_square.x = mouseProxy.mouseX;
			_square.y = mouseProxy.mouseY;
		}
	}

}