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
    echo "   -d, --suspend Suspend the virtual machine"
    echo "   -p, --pause Pause the virtual machine"
    echo "   -u, --unpause Unpause the virtual machine"
    echo "   --reset Reset the virtual machine."
    echo "   --status List the running virtual machines."

elif [ "$1" == "--status" ]
then
    /Applications/VMware\ Fusion.app/Contents/Library/vmrun list
elif [ "$1" == "--stop" ] || [ "$1" == "-s" ]
then
    echo "Stopping " $2"....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion stop "/Users/ahmedsamy/Documents/Virtual Machines.localized/"$2".vmwarevm" nogui
elif [ "$1" == "--run" ] || [ "$1" == "-r" ]
then
    echo "Starting " $2"....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start "/Users/ahmedsamy/Documents/Virtual Machines.localized/"$2".vmwarevm" nogui
elif [ "$1" == "--suspend" ] || [ "$1" == "-d" ]
then
    echo "Suspending " $2"....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion suspend "/Users/ahmedsamy/Documents/Virtual Machines.localized/"$2".vmwarevm" nogui
elif [ "$1" == "--pause" ] || [ "$1" == "-p" ]
then
    echo "Pausing " $2"....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion pause "/Users/ahmedsamy/Documents/Virtual Machines.localized/"$2".vmwarevm" nogui
elif [ "$1" == "--unpause" ] || [ "$1" == "-u" ]
then
    echo "Unpausing " $2"....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion unpause "/Users/ahmedsamy/Documents/Virtual Machines.localized/"$2".vmwarevm" nogui
elif [ "$1" == "--reset" ]
then
    echo "Resetting " $2"....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion reset "/Users/ahmedsamy/Documents/Virtual Machines.localized/"$2".vmwarevm" nogui
then
fi
