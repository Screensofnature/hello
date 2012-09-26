package game.core.view 
{
	import flash.display.DisplayObjectContainer;
	import game.core.model.GameProxy;
	import game.core.model.KeyboardProxy;
	import game.core.model.MouseProxy;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	/**
	 * ...
	 * @author screensofnature
	 */
	public class BaseMediator extends Mediator 
	{
		
		public function BaseMediator(mediatorName:String=null, viewComponent:Object=null) 
		{
			super(mediatorName, viewComponent);
		}
		
		public function get content():DisplayObjectContainer { return DisplayObjectContainer(getViewComponent()); }
		public function get mouseProxy():MouseProxy { return MouseProxy(facade.retrieveProxy(MouseProxy.NAME)); }
		public function get keyboardProxy():KeyboardProxy{return KeyboardProxy(facade.retrieveProxy(KeyboardProxy.NAME))}
				public function get gameProxy():GameProxy
		{
			return GameProxy(facade.retrieveProxy(GameProxy.NAME))
		}
	}

}