package game.core.view
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.ui.Keyboard;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	import game.core.config.GeneralNotifications;
	
	/**
	 * ...
	 * @author screensofnature
	 */
	public class TextMediator extends BaseMediator
	{
		public static const NAME:String = "TextMediator";
		private var _text:TextField = null;
		
		public function TextMediator(viewComponent:Object)
		{
			super(NAME, viewComponent);
		}
		
		override public function onRegister():void
		{
			super.onRegister();
			_text = new TextField();
			_text.background = true;
			_text.backgroundColor = 0x00FF00;
			_text.text = "";
			_text.x = 100;
			_text.y = 100;
			_text.border = true;
			_text.borderColor = 0xffffff;
			_text.width = 200;
			content.addChild(_text);
		}
		
		override public function listNotificationInterests():Array
		{
			return [GeneralNotifications.KEY_UPDATE, GeneralNotifications.NEW_GAME_CMD, GeneralNotifications.CHECK_KEY_CMD, GeneralNotifications.UPDATE];
		}
		
		override public function handleNotification(notification:INotification):void
		{
			switch (notification.getName())
			{
				case GeneralNotifications.KEY_UPDATE:
					
					//switch(notification.getBody())
					//{
					//case Keyboard.A:
					//_text.x--;
					//break;
					//case Keyboard.B:
					//break;
					//case Keyboard.C:
					//break;
					//}
					//_text.text = "Hello!";
					//if (notification.getBody()==37){_text.x--;}
					//trace (111);
					//if (notification.getBody()==Keyboard.A){_text.x--;}
					//if (notification.getBody()==39){_text.x++;}	
					//if (notification.getBody()==68){_text.x++;}
					//if (notification.getBody()==38){_text.y--;}
					//if (notification.getBody()==87){_text.y--;}
					//if (notification.getBody()==40){_text.y++;}
					//if (notification.getBody() == 83) { _text.y++; }
					//if (notification.getBody() >=65 && notification.getBody() <=90){}
					//if (notification.getBody() >=65 && notification.getBody() <=90){}
					//trace ("moving text");
					break;
				case GeneralNotifications.NEW_GAME_CMD:
				case GeneralNotifications.CHECK_KEY_CMD:
				case GeneralNotifications.UPDATE:
					drawText();
					break;
			}
		}
		
		private function drawText():void
		{
			var newText:String = gameProxy.gameString.join("");
			newText = "     " + newText;
			//newText.= "$";
			newText = newText.substring(0, gameProxy.pacmanPosition) + "<" + newText.substring(gameProxy.pacmanPosition + 1, newText.length);
			newText = newText.substring(0, gameProxy.alienPosition) + "$" + newText.substring(gameProxy.alienPosition + 1, newText.length);
			_text.text = newText;
			//super.handleNotification(notification);
			//_text.x = mouseProxy.mouseX;
			//_square.y = mouseProxy.mouseY;
		}
	}
}