package game.core.view 
{
	import flash.display.DisplayObjectContainer;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import game.core.config.GeneralNotifications;
	import game.core.model.MouseProxy;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	import game.core.model.KeyboardProxy;
	
	/**
	 * ...
	 * @author screensofnature
	 */
	public class RootMediator extends BaseMediator 
	{
		public static const NAME:String = "RootMediator";
		
		public function RootMediator(viewComponent:Object) 
		{
			super(NAME, viewComponent);
		}
		
		override public function onRegister():void 
		{
			super.onRegister();
			content.stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
			content.stage.addEventListener(MouseEvent.MOUSE_MOVE, onMouseMove);
		}
		
		private function onMouseMove(event:MouseEvent):void 
		{
			mouseProxy.setMouse(event.stageX, event.stageY);
		}
		
		private function onKeyUp(event:KeyboardEvent):void 
		{
			//KeyboardProxy.NAME(event.keyCode);
			//trace(event.keyCode);
			keyboardProxy.setKey(event.keyCode);
			sendNotification(GeneralNotifications.CHECK_KEY_CMD);
		}
	}

}