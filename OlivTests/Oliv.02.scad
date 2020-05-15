/**
 * First test
 * 
 * For a Raspberry Zero stand with Breadboard, try 80 x 80 mm (out all)
 */
 
use <../LEGO.scad>

TILE_TYPE = "tile"; 
BLOCK_TYPE = "block"; // or just block_type

tapeWidth = 3;         // In studs
tapeThickness = 1 / 3; // In "standard block" height
tapeType = TILE_TYPE;

outerWidth = 10; // 12;  // In studs
outerLength = 10; // 11; // In studs

// Studs to mm ?
function studsToMm_stby(studs) =
	((8.2 * studs) - 0.6);
	
function studsToMm(studs) =
	((8 * studs) + 0);

// Could also use place and uncenter (LOGO specific)
outerWidthMm = studsToMm(outerWidth);
outerLengthMm = studsToMm(outerLength);
tapeWidthMm = studsToMm(tapeWidth);

echo("Total Width in mm:", outerWidthMm, ", Total Length in mm:", outerLengthMm);  

rotate([0, 0, 180]) {
	union() {

		color( "green" ) {
			
			translate([0, -((outerWidthMm / 2) - (tapeWidthMm / 2)), 0]) {
				rotate([0, 0, 0]) {
					block(width=tapeWidth,
								length=outerLength,
								height=tapeThickness,
								type=tapeType);
				}
			}
		
			translate([0, ((outerWidthMm / 2) - (tapeWidthMm / 2)), 0]) {
				rotate([0, 0, 0]) {
					block(width=tapeWidth,
								length=outerLength,
								height=tapeThickness,
								type=tapeType);
				}
			}

			translate([-((outerLengthMm / 2) - (tapeWidthMm / 2)), 0, 0]) {
				rotate([0, 0, 90]) {
					block(width=tapeWidth,
								length=outerWidth,
								height=tapeThickness,
								type=tapeType);
				}
			}

			translate([((outerLengthMm / 2) - (tapeWidthMm / 2)), 0, 0]) {
				rotate([0, 0, 90]) {
					block(width=tapeWidth,
								length=outerWidth,
								height=tapeThickness,
								type=tapeType);
				}
			}

  	}

	}
}
