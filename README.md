# Hollow Ellipse and Rectangle
A script for making a hollow ellipse and/or rectangle in GIMP, which normally is kind of a pain. 

# Why?
Because I saw a post making fun of GIMP users because it's not always apparent to new users of GIMP as to how one would make a hollow circle, so I decided to make a little script that automates the process.

# Installing
## Linux and \*BSD
On Linux and \*BSD, you just have to copy the filled_ellipse.scm to ~/.config/GIMP/2.10/scripts, replacing the 2.10 with whatever version you have. Then, in GIMP, go to Filters -> Script-fu -> Refresh Scripts There's also a hollow rectangle script if you wanna use it lol

## Windows and macOS
To find your folder for scripts, go to Edit -> Preferences. Once in the preferences menu, go to Folders, press the little + button, go to "Scripts", and copy the directory that it gives you. On windows, press the windows button + r, and then paste that folder in. On macOS, go to finder, press Command + Shift + G, then paste the directory in. Then copy the filled_ellipse.scm/filled_rectangle.scm into your script folder. That should be all

# Using
To use, simply use the rectangular selection tool to select some area, then click on Edit -> Create -> Draw an Ellipse. It'll ask you for the radius of the outline of the hollowed-out ellipse. The default is usually fine, though playing around with the option is always fun.
