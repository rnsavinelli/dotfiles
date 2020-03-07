#!/bin/bash
# Mounts Android Phone if Available
# Only works for 1 device at a time

simple-mtpfs -l

if [ "$?" == "1" ]; then
    echo -e "WARNING: No mountable device was found\nExiting script." 1>&2
    exit 1

else
    mkdir ~/.mnt/
    echo "Mounting device to ~/.mnt/ folder"
    simple-mtpfs --device 1 ~/.mnt/
    if [ "$?" == "1" ]; then
	echo -e "WARNING: Device couldn't be mounted\nExiting script." 1>&2
	exit 1
    else
        echo "Device mounted"
        echo "Tip: Device can be unmounted by running \"umount ~/.mnt/\""
	exit 0
    fi
fi
