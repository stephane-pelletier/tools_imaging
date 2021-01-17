  //load csv (sep=",")
   run("Results... ", "open");
   for (i = 0; i < nResults; i++)
   {
 	  //define variable
      t = getResult("Time", i);
      x = getResult("X", i);
      y = getResult("Y", i);
      //xyt
      makePoint(x, y, "large #ffafaf circle");
      Overlay.addSelection;
      Overlay.setPosition(t);
      Stack.setPosition(1,1,t);
      // Add to the ROI manager.Deselect 'show all'
      roiManager("Add");

   }
