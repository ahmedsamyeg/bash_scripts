#!/bin/bash

if [ "$1" == "--help" ] || [ "$1" == "-h" ] || [ "$1" == "/?" ] || [ "$1" == "" ] || [ "$2" == "" ]
then
    echo usage: cmdinstall  [bash_script_file] [desired_command_name] 
    echo "  options:"
    echo "   -h, --help, /?     Show instructions."
else
    echo installing $1 as $2.....
    if [ $(uname) == "Darwin" ]
    then
        sudo cp -i $1 /usr/local/bin/$2
        sudo chmod +xr /usr/local/bin/$2 
    else
        sudo cp -i $1 /bin/$2
        sudo chmod +xr /bin/$2
    fi
fi
