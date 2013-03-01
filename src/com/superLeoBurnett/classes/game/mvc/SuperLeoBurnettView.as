package com.superLeoBurnett.classes.game.mvc
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class SuperLeoBurnettView extends Sprite
	{
		private static const CONTENT		: String = 'unityContent.swf';
		
		private var _model					: GameModel;
		
		public function SuperLeoBurnettView()
		{
			// ...
		}
		
		
		// This possibly needs to be moved....
		private function _init() : void
		{
			_model = GameModel.instance;
			_model.startLoad(CONTENT);
		}
		
		// This might not work....may have to shorten it...
		public function get unityData() : GameModel
		{
			return _model.unityContentLoader.unityContent;
		}
	}
}