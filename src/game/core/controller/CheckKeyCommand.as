package game.core.controller 
{
	import flash.ui.Keyboard;
	import org.puremvc.as3.interfaces.INotification;
	/**
	 * ...
	 * @author screensofnature
	 */
	public class CheckKeyCommand extends BaseCommand 
	{
		
		override public function execute(notification:INotification):void 
		{
			super.execute(notification);
			if (gameProxy.gameOver == true) return;
			if (String.fromCharCode(keyboardProxy.lastKey).toLocaleLowerCase() == gameProxy.gameString[gameProxy.pacmanPosition - 4])
			{
				gameProxy.gameString[gameProxy.pacmanPosition-4] = " ";
				gameProxy.pacmanPosition++;
			}
			else gameProxy.gameError++;
		}
		
	}

}