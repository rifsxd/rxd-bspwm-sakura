#!/usr/bin/env bash

## Script Termination
exit_on_signal_SIGINT () {
    { printf "\n\n%s\n" "Script interrupted." 2>&1; echo; }
    exit 0
}

exit_on_signal_SIGTERM () {
    { printf "\n\n%s\n" "Script terminated." 2>&1; echo; }
    exit 0
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

# Build packages
build_pkg () {
	echo -e "\nBuilding Package - \n"
	makepkg -s -f && rm -rf pkg
	
	RDIR='../packages/x86_64'
	if [[ -d "$RDIR" ]]; then
		mv -f *.pkg.tar.zst "$RDIR"
		echo -e "\nPackage moved to Repository.\n[!] Don't forget to update the database.\n"
	fi
}

# Execute
build_pkg
#yay -S rxd-ardesia rxd-eww rxd-networkmanager-dmenu rxd-polybar rxd-ksuperkey rxd-betterlockscreen rxd-xfce-polkit rxd-picom
#paru -S rxd-ardesia rxd-eww rxd-networkmanager-dmenu rxd-polybar rxd-ksuperkey rxd-betterlockscreen rxd-xfce-polkit rxd-picom
#makepkg -si
