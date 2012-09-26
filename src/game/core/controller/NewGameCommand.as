package game.core.controller 
{
	import flash.utils.clearInterval;
	import flash.utils.setInterval;
	import game.core.config.GeneralNotifications;
	import org.puremvc.as3.interfaces.INotification;
	/**
	 * ...
	 * @author screensofnature
	 */
	public class NewGameCommand extends BaseCommand 
	{
		
		override public function execute(notification:INotification):void 
		{
			super.execute(notification);
			gameProxy.gameString = "abcdefghqwerty".split("");
			gameProxy.gameError = 0;
			gameProxy.pacmanPosition = 4;
			gameProxy.alienPosition = 0;
			gameProxy.gameOver = false;
			gameProxy.interval = setInterval(incEnemy, 1000);
		}
		
		private function incEnemy():void
		{
			gameProxy.alienPosition++;
			if (gameProxy.alienPosition == gameProxy.pacmanPosition)
			{
				clearInterval(gameProxy.interval);
				gameProxy.gameOver = true;
			}
			sendNotification(GeneralNotifications.UPDATE);
		}
	}

}