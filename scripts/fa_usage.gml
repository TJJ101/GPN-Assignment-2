/*
FontAwesome Usage:
There are two ways to use FontAwesome in your games. This page will document both methods and tell you how to use them in your game.
*This extension assumes you downloaded all of the resources that came with this extension. The important part is the macros and the font itself.
*This extension treats all icons as a text based character. You should utilize it as a string, not a sprite.
----------------------------------------------------------------------------------------------------------------------------
IMPORTANT - Adding Macros
1.) Download the FontAwesome Macro at http://chrisburgess.us/products/downloads/fontawesome_macros.txt (If it doesn't download automatically, right click on the page, then select "Save As")
2.) Open Gamemaker Studio
3.) Open the "All Configurations" Macro in the resource tree
4.) Click "Load"
5.) Find and load the fontawesome_macros.txt that we downloaded from Step 1. Make sure all of your font icons are listed here.
----------------------------------------------------------------------------------------------------------------------------
Method 1 - Without Downloading the font at runtime (Great for offline games):
1.) Download the font from FontAwesome's website: http://fontawesome.io/
2.) Extract the .zip folder on your computer
3.) Install the FontAwesome font on your computer
4.) Create a new font resource in the resource tree (I'll call it font_awesome for this example)(A font resource has been provided for you)
5.) Set FontAwesome as the font of choice. The default character set is fine as is.
6.) Add your font to a draw event of an object. This will draw the icon in your game. See obj_draw_icon as an example: 

draw_set_color(c_black);        //Sets the font color to black
draw_set_font(font_awesome);    //Sets the font to font_fontawesome, that we created in step 5.
draw_text(16,16,fa_youtube);    //Draws our icon at the given X and Y positions. See the list of icons in the fa_icon_list script

8.) Make sure the object drawing the font is in the room you want it to appear in.
----------------------------------------------------------------------------------------------------------------------------
Method 2 - By Downloading the font at runtime (Great for less physical resource usage, temporary storage, or games that utilize an online connection).
*This method also gives the FontAwesome team more downloads since it will be downloaded per customer, not per project. It indirectly gives them more support*
1.) Add obj_download_font to the first room your game visits. This will download font_awesome at the beginning of the game so it doesn't interrupt gameplay later on.
2.) Create a new font resource in the resource tree (I'll call it font_awesome for this example)(A font resource has been provided for you)
3.) Leave the default settings in the font_awesome resource. These will be replaced as a result of Line 13 of obj_download_font's HTTP event.
4.) Add your font to a draw event of an object. This will draw the icon in your game. See obj_draw_icon as an example: 

draw_set_color(c_black);        //Sets the font color to black
draw_set_font(font);            //Sets the font to our global variable font which is defined in obj_download_font
draw_text(16,16,fa_youtube);    //Draws our icon at the given X and Y positions. See the list of icons in the fa_icon_list script

5.) Make sure the object drawing the font is in the room you want it to appear in.
----------------------------------------------------------------------------------------------------------------------------
Bonus Points:
Due to the icons being treated as strings, you can concatenate icons in a string. Example:
draw_text(16,16,fa_twitter+" "+fa_facebook);

