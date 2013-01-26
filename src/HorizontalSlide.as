package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author 
	 */
	public class HorizontalSlide extends Entity 
	{
		public var vx : int;
		
		public function HorizontalSlide() 
		{
			addGraphic(Image.createRect(20, 20));
			y = 100;
			x = 1.25 * FP.engine.width - 10;
			vx = -640;
		}
		
		override public function update():void 
		{
			super.update();
			x += vx * FP.elapsed;
			
			if (x + 20 < 0)
			{
				FP.world.remove(this);
			}
		}
		
	}

}