# !/bin/bash
# Mounts Android Phone
# Only works for 1 device at a time

selection=1
options=$(simple-mtpfs --list-devices | wc -l)

# IF NO DEVICE WAS FOUND
if [ "$options" == "0" ]; then
    echo -e "WARNING: No mountable device was found\nExiting script." 1>&2
    exit 1

else
    mkdir -p ~/.mnt/
    echo "Available devices:"
    simple-mtpfs --list-devices

    # IF MORE THAN ONE DEVICE IS AVAILABLE
    if [ "$options" -gt "1" ]; then
	while true; do
            read -p "Which device do you want to mount? " selection

	    if [ "$selection" -le "$options" ] && [ "$selection" -ge 1 ]; then
		break

	    else
		echo "ERROR: Invalid selection"

	    fi
	done
    fi

    echo "Mounting device number $selection to the ~/.mnt/ directory"
    simple-mtpfs --device $selection ~/.mnt/

    if [ "$?" == "1" ]; then
	echo -e "WARNING: Device could NOT be mounted\nExiting script." 1>&2
        exit 1

    else
	echo -e "Device mounted successfully\nTip: Unmount your device by running $ umount ~/.mnt/"
	# notify-send "Android device mounted to ~/.mnt/" "Unmount your device by running $ umount ~/.mnt/"
    fi
fi
