package game.core.controller 
{
	import game.core.config.GeneralNotifications;
	import game.core.model.GameProxy;
	import game.core.model.KeyboardProxy;
	import game.core.model.MouseProxy;
	import game.core.view.RootMediator;
	import game.core.view.SquareMediator;
	import game.core.view.TextMediator;
	import org.puremvc.as3.interfaces.INotification;
	/**
	 * ...
	 * @author screensofnature
	 */
	public class StartUpCommand extends BaseCommand 
	{
		
		override public function execute(notification:INotification):void 
		{
			super.execute(notification);
			facade.registerCommand(GeneralNotifications.NEW_GAME_CMD, NewGameCommand);
			facade.registerCommand(GeneralNotifications.CHECK_KEY_CMD, CheckKeyCommand);
			
			facade.registerProxy(new KeyboardProxy());
			facade.registerProxy(new MouseProxy());
			facade.registerProxy(new GameProxy());
			
			
			
			facade.registerMediator(new RootMediator(notification.getBody()));
			facade.registerMediator(new SquareMediator(notification.getBody()));
			facade.registerMediator(new TextMediator(notification.getBody()));
			
			sendNotification(GeneralNotifications.NEW_GAME_CMD);

		}
		
	}

}