﻿package org.fatlib.game.standard
{
	import org.fatlib.game.GameComponent;
	import org.fatlib.game.GameObject;
	import org.fatlib.game.Transform;
	import org.fatlib.struct.Component;
	import org.fatlib.ui.Key;
	import org.fatlib.utils.MathUtils;
	
	public class FollowBehavior extends GameComponent
	{
		private var _target:GameObject;
		private var _halflife:Number = 2;
		private var _lerp:Number = 1;
		
		public function FollowBehavior(target:GameObject, lerp:Number = 1) 
		{
			super();
			_target = target;
			_lerp = lerp;
		}
		
		override public function update(timeStep:Number = 1):void 
		{
			gameObject.transform.x += (_target.transform.x - gameObject.transform.x) / _lerp;
			gameObject.transform.y += (_target.transform.y - gameObject.transform.y) / _lerp;
			if (Key.space) _target = _target.next;
		}
		
	}

}