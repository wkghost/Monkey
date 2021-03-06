package monkey.core.entities.particles.prop.value {
	
	import monkey.core.utils.MathUtils;
	
	/**
	 * 在两个常量之间随机 
	 * @author Neil
	 * 
	 */	
	public class DataRandomTwoConst extends PropData {
		
		public var minValue : Number = 0;
		public var maxValue : Number = 0;
		
		public function DataRandomTwoConst(min : Number = 0, max : Number = 0) {
			super();
			this.minValue = min;
			this.maxValue = max;
		}
		
		override public function getValue(x : Number) : Number {
			return MathUtils.lerp(minValue, maxValue, Math.random());
		}
		
	}
}
