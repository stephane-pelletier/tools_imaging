///macro to do 'Z project'. Work with picture with one color (avoid .nd format for example).
folder_to_open = getDirectory("Select folder with picture to treat");//select folder
filename = getFileList(folder_to_open);
newDir = folder_to_open + "Z Project - Average Intensity" + File.separator;//create new folder for picture project
if (File.exists(newDir))
   exit("Destination directory already exists; remove it and then run this macro again");
   //error message if folder exists already
File.makeDirectory(newDir);
for (i=0; i<filename.length; i++) {
        if(endsWith(filename[i], ".TIF")) {//maybe you will need change the format (.tif is different of .TIF)
                open(folder_to_open+filename[i]);
                run("Z Project...", "projection=[Average Intensity]");//do the z projection, change 'Pojection type' if you need
                saveAs("tiff", newDir + getTitle);
                close(); close();
        }
}
///////////////////LINE BELOW CAN BE DELETE - JUST TO OPEN THE NEW FOLDER WITH PROJECTION//////////////////
folder_to_open2 = getDirectory( "Select folder with z projection ; 'Cancel' if you don't want open pictures" );
//select folder with projection
list = getFileList( folder_to_open2 );
for ( i=0; i<list.length; i++ ) {
    open( folder_to_open2 + list[i] );
} 

