dir = getDirectory("Choose a Directory ");
print("Loading all .png files in "+dir);
list = getFileList(dir);
for (i=0; i<list.length; i++) {
	if (endsWith(list[i], ".png")) {
		open(list[i]);
	}
}
run("Images to Stack", "name=Stack title=[] use");

// Uncomment these lines if all the pngs have the same padding that you want to crop (like matplotlib figures tend to)
// Determine the ideal crop dimensions using the macro recorder in FIJI (Plugins>Macros>Record..., then make an appropriate ROI using the rectangle tool)
//makeRectangle(213, 107, 934, 537);
//run("Crop");

run("Animated Gif ... ", "name="+list[0]+".gif set_global_lookup_table_options=[Do not use] optional=[] image=[No Disposal] set=1000 number=0 transparency=[No Transparency] red=0 green=0 blue=0 index=0 filename=["+dir+"/"+list[0]+".gif]");
close();
