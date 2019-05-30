#!/bin/bash

#
#   Copyrights (c) 2019 Ahmed Elsayed
#
#   runvm.sh
#   A script to run local vmware fusion virtual machines in the backgound without showing the console in Apple MacOS.
#   this script is very customized to my MacBook Pro
#

if [ "$1" == "postgres" ] || [ "$1" == "1" ]
then
    echo "Starting deb_9_postgres....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start "/Users/ahmedsamy/Documents/Virtual Machines.localized/deb_9_postgres.vmwarevm" nogui
elif [ "$1" == "mongodb" ] || [ "$1" == "2" ]
then
    echo "Starting deb_9_mongodb....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start "/Users/ahmedsamy/Documents/Virtual Machines.localized/deb_9_monodb.vmwarevm" nogui
elif [ "$1" == "mysql" ] || [ "$1" == "3" ]
then
    echo "Starting deb_9_mysql....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start "/Users/ahmedsamy/Documents/Virtual Machines.localized/deb_9_mysql.vmwarevm" nogui
elif [ "$1" == "web" ] || [ "$1" == "4" ]
then
    echo "Starting deb_9_web_server....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start "/Users/ahmedsamy/Documents/Virtual Machines.localized/deb_9_web_server.vmwarevm" nogui
elif [ "$1" == "bsd" ] || [ "$1" == "5" ]
then
    echo "Starting deb_9_freebsd....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start "/Users/ahmedsamy/Documents/Virtual Machines.localized/freebsd.vmwarevm" nogui
elif [ "$1" == "" ] || [ "$1" == "all" ]
then
    echo "Starting deb_9_postgres....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start "/Users/ahmedsamy/Documents/Virtual Machines.localized/deb_9_postgres.vmwarevm" nogui
    echo "Starting deb_9_mongodb....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start "/Users/ahmedsamy/Documents/Virtual Machines.localized/deb_9_monodb.vmwarevm" nogui
    echo "Starting deb_9_mysql....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start "/Users/ahmedsamy/Documents/Virtual Machines.localized/deb_9_mysql.vmwarevm" nogui
    echo "Starting deb_9_web_server....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start "/Users/ahmedsamy/Documents/Virtual Machines.localized/deb_9_web_server.vmwarevm" nogui
    echo "Starting deb_9_freebsd....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start "/Users/ahmedsamy/Documents/Virtual Machines.localized/freebsd.vmwarevm" nogui
elif [ "$1" == "show" ]
then
    echo
    echo "1. Ubuntu 9 running PostgreSQL. To run the vm \"./runvm.sh 1\" or \"./runvm.sh postgres\"\n"
    echo "2. Ubuntu 9 running MongoDB. To run the vm \"./runvm.sh 2\" or \"./runvm.sh mongodb\n"
    echo "3. Ubuntu 9 running MySQL. To run the vm \"./runvm.sh 3\" or \"./runvm.sh mysql\n"
    echo "4. Ubuntu 9 running Apache Web Server. To run the vm \"./runvm.sh 4\" or \"./runvm.sh web\n"
    echo "5. FreeBSD 12.0. To run the vm \"./runvm.sh 5\" or \"./runvm.sh bsd\n"
    echo
    echo to run any other vm \"./runvm.sh {vm_name_without_extension}\" ie: \"./runvm.sh deb_9_mongodb\"
    echo
else
    echo "Starting " $1"....." & /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start "/Users/ahmedsamy/Documents/Virtual Machines.localized/"$1".vmwarevm" nogui
fi
