package ide.plugins.groups.particles.lifetime {

	import flash.events.Event;
	import flash.geom.Point;
	
	import ide.App;
	import ide.plugins.groups.particles.ParticleLifetimeGroup;
	
	import monkey.core.entities.particles.ParticleSystem;

	/**
	 * lifetime speed x
	 * @author Neil
	 *
	 */
	public class LifetimeSize extends ParticleLifetimeGroup {

		public function LifetimeSize() {
			super("LifetimeSize");
		}

		override protected function onChangeLifetime(e : Event) : void {
			this.data.size.datas = new Vector.<Point>();
			for each (var p : Point in this.curve.points) {
				this.data.size.datas.push(p.clone());
			}
			this.data.size.yValue = this.curve.axisYValue;
			super.onChangeLifetime(e);
		}

		override public function updateGroup(app : App, particle : ParticleSystem) : void {
			super.updateGroup(app, particle);
			this.data = particle.userData.lifetime;
			this.curve.axisYValue = this.data.size.yValue;
			this.curve.points = this.data.size.datas;
		}

	}
}
