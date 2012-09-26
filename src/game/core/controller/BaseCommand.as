package game.core.controller
{
	import game.core.model.GameProxy;
	import game.core.model.KeyboardProxy;
	import game.core.model.MouseProxy;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	/**
	 * ...
	 * @author screensofnature
	 */
	public class BaseCommand extends SimpleCommand
	{
		
		override public function execute(notification:INotification):void
		{
			super.execute(notification);
		}
		
		public function get mouseProxy():MouseProxy
		{
			return MouseProxy(facade.retrieveProxy(MouseProxy.NAME));
		}
		
		public function get keyboardProxy():KeyboardProxy
		{
			return KeyboardProxy(facade.retrieveProxy(KeyboardProxy.NAME))
		}
		public function get gameProxy():GameProxy
		{
			return GameProxy(facade.retrieveProxy(GameProxy.NAME))
		}
		}

}