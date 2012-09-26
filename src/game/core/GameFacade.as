package game.core 
{
	import flash.display.DisplayObjectContainer;
	import game.core.config.GeneralNotifications;
	import game.core.controller.StartUpCommand;
	import org.puremvc.as3.patterns.facade.Facade;
	
	/**
	 * ...
	 * @author screensofnature
	 */
	public class GameFacade extends Facade 
	{
		
		public static function getInstance():GameFacade
		{
			if (!instance)
				instance = new GameFacade();
			return GameFacade(instance);
		}
		
		public function start(mainView:DisplayObjectContainer):void
		{
			registerCommand(GeneralNotifications.START_CMD, StartUpCommand);
			sendNotification(GeneralNotifications.START_CMD, mainView);
		}
		
	}

}