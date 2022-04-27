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
	makepkg -s && rm -rf src pkg
	
	RDIR='../packages/x86_64'
	if [[ -d "$RDIR" ]]; then
		mv -f *.pkg.tar.zst "$RDIR"
		echo -e "\nPackage moved to Repository.\n[!] Don't forget to update the database.\n"
	fi
}

# Execute
yay -S ardesia rofimoji eww networkmanager-dmenu-git polybar ksuperkey betterlockscreen xfce-polkit picom-ibhagwan-git
paru -S ardesia rofimoji eww networkmanager-dmenu-git polybar ksuperkey betterlockscreen xfce-polkit picom-ibhagwan-git
makepkg -si
