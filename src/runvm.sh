#!/bin/bash

#
#   Copyrights (c) 2019 Ahmed Elsayed
#
#   runvm.sh
#   A script to run local vmware fusion virtual machines in the backgound without showing the console in Apple MacOS.
#

if [ "$1" == "--help" ] || [ "$1" == "--h" ] || [ "$1" == "/?" ] || [ "$1" == "" ]
then
    echo
    echo --help, -h, /? : show instructions.
    echo to run any vm \"./runvm.sh {vm_name_without_extension}\" ie: \"./runvm.sh deb_9_mongodb\"
    echo
else
    echo "Starting " $1"....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start "/Users/ahmedsamy/Documents/Virtual Machines.localized/"$1".vmwarevm" nogui
fi
