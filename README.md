# FreeCAD Python Macros
Python macros from my YouTube Video series https://www.youtube.com/channel/UCUWhaOxsRk_5oPPq00_Y7Dw/playlists

### Image File to Stylised Sketch

Sketch allows a image to be converted into a sketch of holes i.e. a image of the letter 'A' run through the macros will be able to create a sketch with a series of circles that make up a letter 'A' allowing this to be attached to the face and extruded/padded/pocketed to create a sylised image on your piece. There is an additional script for deleting the points as it can be quite CPU intensive to select all the objects on the sketch to delete.

Note: Some maths that are usefull for this macro as you will need to move in and out of a linear list to x,y co-ordinates. 2D / 1D mapping is pretty simple. Given x and y, and 2D array sizes width (for x-direction) and height (for y-direction), you can calculate the according index i in 1D space (zero-based) by

i = x + width*y;

The application for this would be to fgure out the index of list item that needs to be plotted at a co-ordinate. The reverse operation is

x = i % width;    // % is the "modulo operator", the remainder of i / width;
y = i / width;    // where "/" is an integer division

You can extend this easily to 3 or more dimensions. For example, for a 3D matrix with dimensions "width", "height" and "depth":

i = x + width*y + width*height*z;

and reverse:

x = i % width;
y = (i / width)%height;
z = i / (width*height);

### Animation Macros
Basic animation with frame capture output to c:\temp and FFMpeg call to render animation into a video file.
