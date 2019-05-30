#
#   Copyrights (c) 2019 Ahmed Elsayed
#
#   sysinfo.sh
#   A script to display system info for FreeBSD, Linux and MacOS
#
#

echo "System Info v1.0.0"
echo "------------------------------"
echo
echo General Information:
echo "Computer Name : " $HOSTNAME
echo
if [ $(uname) = "Linux" ]
then
cat /proc/cpuinfo| grep 'model name'
else
echo 'CPU model name: ' $(sysctl -n machdep.cpu.brand_string)
fi
echo "Architecture  : " $HOSTTYPE

echo "kernel        : " $OSTYPE
echo "kernel version: " $(uname -r)

echo "OS Name       : " $OSTYPE

echo "OS            : " $(uname)
echo "Uptime        : " $(uptime)
echo "User          : " $(whoami)
echo


#if [ $(uname) = "Linux" ]
#then
# cat /proc/cpuinfo| grep 'model name'
##echo Hi
#else
#  sysctl -n machdep.cpu.brand_string
#fi

# General Info
# Machine Type
# OS Type


# Hostname
# OS Name
# Kernel
# Architecutre
# Uptime
# Username

