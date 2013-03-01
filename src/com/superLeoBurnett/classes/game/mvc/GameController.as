package com.superLeoBurnett.classes.game.mvc
{
	import flash.events.EventDispatcher;

	public class GameController extends EventDispatcher
	{
		private static var _instance : GameController;
		
		public static const UNITY_INIT					: String = 'Unity.Init';
		public static const UNITY_LOAD_COMPLETE			: String = 'Unity.Load.Complete';
		
		public static const XML_LOADED					: String = 'Xml.Loaded';
		
		public function GameController(s:SingletonEnforcer)
		{
			// ...
		}
		
		public static function get instance() : GameController
		{
			if (GameController._instance == null)
			{
				GameController._instance = new GameController(new SingletonEnforcer);
			}
			
			return GameController._instance;
		}
		
		override public function toString() : String
		{
			return '[com.superLeoBurnett.classes.game.mvc.GameController]';
		}
	}
}

internal class SingletonEnforcer {}