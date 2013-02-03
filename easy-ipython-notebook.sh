#!/bin/sh
#
# See https://github.com/liyanage/easy-ipython-notebook for more information
#

set -e

# System-wide install of PIP, if it's not already available
if ! pip freeze >/dev/null 2>&1; then
	sudo easy_install pip
fi

# System-wide install of virtualenv, if it's not already available
if ! type virtualenv >/dev/null 2>&1; then
	sudo pip install virtualenv
fi

# Initialize a virtualenv if not already present
if ! [ -e .Python ]; then
    virtualenv .
fi

# Activate the virtualenv
. bin/activate

# Install Python modules required for ipython notebook into virtualenv, if not already present
for module in Jinja2 pyzmq tornado; do
    if ! pip freeze | grep -q $module; then
        pip install $module
    fi
done

# Fetch iPython sources, if not already present
if ! [ -e ipython ]; then
    git clone https://github.com/ipython/ipython.git
fi

PYTHONPATH=$PWD/ipython python ipython/ipython.py notebook

