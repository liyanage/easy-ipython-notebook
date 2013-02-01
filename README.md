This is a simple script to install and use [IPython's](http://ipython.org) notebook feature. IPython notebook is a
great way to interactively explore Python. It's like a better, multiline-capable
version of the Python [REPL](http://en.wikipedia.org/wiki/Read–eval–print_loop).

Note that this version does not include NumPy, SciPy, matplotlib etc. The full IPython
package including those modules seems to be notoriously hard to build and install on OS X,
and all I want from IPython is the web-based notebook feature, so getting that up and running
quickly is the goal of this tool. If you need the full package with all bells and whistles,
I've heard good things about the [EPD Free](http://www.enthought.com/products/epd_free.php) distribution.

With that cleared up, if this tool provides what you need, here is how to use it:

First, clone or download the project from github:

    git clone https://github.com/liyanage/easy-ipython-notebook.git
    cd easy-ipython-notebook

Then run the combined installer/launcher script:

    ./easy-ipython-notebook.sh

This will
- initialize a virtualenv
- download and install IPython
- download and install some required modules
- launch the notebook server
- take you to Safari where you can create a new notebook

To stop the server, go back to the Terminal and hit Ctrl-C.
