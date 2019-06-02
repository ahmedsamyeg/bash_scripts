#!/bin/bash

#
#   Copyrights (c) 2019 Ahmed Elsayed
#
#   runvm.sh
#   A script to run local vmware fusion virtual machines in the backgound without showing the console in Apple MacOS.
#

if [ "$1" == "--help" ] || [ "$1" == "-h" ] || [ "$1" == "/?" ] || [ "$1" == "" ]
then
    echo usage: runvm [options] vm_name_without_extension 
    echo "  options:"
    echo "   -h, --help, /?     Show instructions."
    echo "   -r, --run   Start the virtual machine in the background."
    echo "   -s, --stop  Stop the virtual machine."
    echo "   --status list the running virtual machines."
    
elif [ "$1" == "--status" ]
then
    /Applications/VMware\ Fusion.app/Contents/Library/vmrun list
elif [ "$1" == "--stop" ] || [ "$1" == "-s" ]
then
    echo "Stopping " $2"....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion stop "/Users/ahmedsamy/Documents/Virtual Machines.localized/"$2".vmwarevm" nogui
elif [ "$1" == "--run" ] || [ "$1" == "-r" ]
then
    echo "Starting " $2"....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start "/Users/ahmedsamy/Documents/Virtual Machines.localized/"$2".vmwarevm" nogui
fi
