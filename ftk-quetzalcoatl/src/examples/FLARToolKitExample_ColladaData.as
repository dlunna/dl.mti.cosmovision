/**
 * FLARToolKit example launcher
 * --------------------------------------------------------------------------------
 * Copyright (C)2010 saqoosha
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 * 
 * For further information please contact.
 *	http://www.libspark.org/wiki/saqoosha/FLARToolKit
 *	<saq(at)saqoosha.net>
 * 
 * Contributors
 *  saqoosha
 *  rokubou
 */
 package examples {

	import flash.events.Event;
	import org.papervision3d.objects.parsers.DAE;
	
	[SWF(width=640, height=480, backgroundColor=0x808080, frameRate=60)]
	
	public class FLARToolKitExample_ColladaData extends PV3DARApp {
		
		private var _earth:DAE;
		
		public function FLARToolKitExample_ColladaData() {
			addEventListener(Event.INIT, _onInit);
			init('../resources/Data/camera_para.dat', '../resources/Data/flarlogo.pat');
			//init('../resources/Data/camera_para.dat', '../resources/Data/bet.pat');
		}
		
		private function _onInit(e:Event):void {
			_earth = new DAE();
			_earth.load('../resources/model/piso.dae');
			_earth.scale = 60;
			_earth.rotationX = 0;
			_earth.rotationY = 0;
			_earth.rotationZ = 0;
			_markerNode.addChild(_earth);
			
			addEventListener(Event.ENTER_FRAME, _update);
		}
		
		private function _update(e:Event):void {
			//_earth.rotationY -= 0.5
		}
	}
}
