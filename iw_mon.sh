#!/bin/bash
wdev=$2

function mon_start()
{
        iw dev $wdev set monitor fcsfail control
        ip link set dev $wdev up
}
function mon_stop()
{
        ip link set dev $wdev down
        iw dev $wdev set type managed
}

if [ $# -ne 2 ]
then
        echo "iw_mon usage : iw_mon.sh <start|stop> <interface>"
        exit 1
fi

iw dev $wdev info > /dev/null 2>&1
if [ $? -eq 237 ]
then
        echo "Device Not Found"
        exit 1
fi

if [ $1 = "start" ]
then
        mon_start
        exit $?
elif [ $1 = "stop" ]
then
        mon_stop
        exit $?
else
        echo "!!! ERROR !!!"
        exit 1
fi
