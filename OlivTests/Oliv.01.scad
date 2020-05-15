/**
 * First test
 * 
 * TODO Get dimensions of the result
 */
 
use <../LEGO.scad>

rotate([0, 0, 180]) {
	union() {

		color( "green" ) {
			translate([0, 0, 0]) {
				block(width=2,    // In studs!!
							length=3,   // In studs!!
							height=1/3, // In standard brick height
							type="tile");
			}
		}

	}
}
