# Maintainer: RifsxD

pkgname=rxd-bspwm-sakura
pkgrel=1
pkgver=1.60
pkgdesc="RifsxD's Bspwm Configurations for Arch"
url="https://github.com/RifsxD/RxD-BSPWM-Sakura-Theme"
arch=('any')
license=('GPL3')
makedepends=()
depends=(       
        'bspwm'
		'sxhkd' 'playerctl'
		'alacritty' 'thunar' 'geany' 'gpick'
		'pavucontrol'
		'rofi' 'dunst' 'xsel' 'xdotool'
		'mpd' 'mpc' 'jq' 'lxappearance'
		'maim' 'xclip' 'viewnior' 'feh'
		'ardesia' 'rofimoji' 'eww' 'networkmanager-dmenu-git' 'polybar'
        'betterlockscreen' 'xfce-polkit' 'picom-ibhagwan-git' 'ksuperkey'
		'xfce4-power-manager' 
		'xsettingsd'
		'xorg-xsetroot'
		'wmname'
)
conflicts=()
provides=("${pkgname}")
install="${pkgname}.install"


package() {
	# Copy bspwm specific config files
	install -Dm 755 ${srcdir}/rxd-bspwm-sakura/bspwm/fehbg   	${pkgdir}/usr/share/rxd-sakura/bspwm/fehbg
	
	cp -r ${srcdir}/rxd-bspwm-sakura/networkmanager-dmenu	${pkgdir}/usr/share/rxd-sakura/
	cp -r ${srcdir}/rxd-bspwm-sakura/eww	                ${pkgdir}/usr/share/rxd-sakura/
	cp -r ${srcdir}/rxd-bspwm-sakura/geany	                ${pkgdir}/usr/share/rxd-sakura/
	cp -r ${srcdir}/rxd-bspwm-sakura/alacritty	            ${pkgdir}/usr/share/rxd-sakura/
	cp -r ${srcdir}/rxd-bspwm-sakura/wallpapers	            ${pkgdir}/usr/share/rxd-sakura/

	# Copy window manager configs
	cp -r ${srcdir}/rxd-bspwm-sakura/bspwm 			        ${pkgdir}/usr/share/rxd-sakura/
	cp -r ${srcdir}/rxd-bspwm-sakura/fonts		    ${pkgdir}/usr/share/fonts/
	chmod +x ~/.config/bspwm/bin/*
	chmod +x ~/.config/bspwm/rofi/bin/*
	chmod +x ~/.config/bspwm/rofi/bin/*
	chmod +x ~/.config/bspwm/polybar/extra-modules/*

	install -Dm 755 ${srcdir}/rxd-bspwm-sakura/bspwm/bspwmrc   			${pkgdir}/usr/share/rxd-sakura/bspwm/bspwmrc
	install -Dm 644 ${srcdir}/rxd-bspwm-sakura/bspwm/dunstrc   		    ${pkgdir}/usr/share/rxd-sakura/bspwm/dunstrc
	install -Dm 644 ${srcdir}/rxd-bspwm-sakura/bspwm/picom.conf   		${pkgdir}/usr/share/rxd-sakura/bspwm/picom.conf

	# Copy keybindings config file
	install -Dm 644 ${srcdir}/rxd-bspwm-sakura/bspwm/sxhkdrc				${pkgdir}/usr/share/rxd-sakura/bspwm/sxhkdrc
}
