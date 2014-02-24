#!/bin/bash

set -e  # If occur any error, exit
set -x  # Verbose mode

function to_console {
    echo -e "\n*** $1 ***\n"
}

to_console "Setting up virtualenv on venv"


cd ..
to_console "creating virtual env on venv folder"
cd venv


to_console "Checking up dependencies"

pip install -r dev_requirements.txt --upgrade


cd ../src

if [ ! -d lib ]; then
    to_console "Creating symlink on src/lib so installed libs become visible to Google App Engine"
    ln -s ~/.pyenv/versions/2.7.5/lib/python2.7/site-packages lib
fi






