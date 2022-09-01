# iw_mon

iw_mon.sh is a shell script to make airmon-ng work with iw command as an alternative when airmon-ng does not work as expected.


Usage.
iw_mon.sh <start|stop> <interface>

When wlan0 is set to monitor mode.
ex. iw_mon.sh start wlan0

To undo wlan0.
ex. iw_mon.sh stop wlan0

It may be easier to use if the alias is set in a .bashrc or similar file.
