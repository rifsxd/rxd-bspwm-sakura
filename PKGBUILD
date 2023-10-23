# Maintainer: RifsxD

pkgname=rxd-bspwm-sakura
pkgrel=1
pkgver=2.12
pkgdesc="RifsxD's Bspwm Configurations for Arch"
url="https://github.com/rifsxd/RxD-BSPWM-Sakura-Theme"
arch=('any')
license=('GPL3')
makedepends=()
depends=(       
                'bspwm'
		'sxhkd' 'playerctl'
		'alacritty' 'thunar' 'geany' 'gpick'
		'pavucontrol' 'alsa-utils' 'nm-connection-editor'
		'rofi' 'dunst' 'xsel' 'xdotool'
		'mpd' 'mpc' 'jq' 'lxappearance'
		'maim' 'xclip' 'viewnior' 'feh'
		'rxd-ardesia' 'rxd-rofimoji' 'rxd-eww' 'rxd-networkmanager-dmenu' 'rxd-polybar' 'rxd-i3lock-color'
                'rxd-betterlockscreen' 'rxd-xfce-polkit' 'rxd-picom' 'rxd-ksuperkey' 'rxd-cava' 'rxd-tty-clock'
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

	install -Dm 755 ${srcdir}/rxd-bspwm-sakura/bspwm/bspwmrc   			${pkgdir}/usr/share/rxd-sakura/bspwm/bspwmrc
	install -Dm 644 ${srcdir}/rxd-bspwm-sakura/bspwm/dunstrc   		    ${pkgdir}/usr/share/rxd-sakura/bspwm/dunstrc
	install -Dm 644 ${srcdir}/rxd-bspwm-sakura/bspwm/picom.conf   		${pkgdir}/usr/share/rxd-sakura/bspwm/picom.conf

	# Copy keybindings config file
	install -Dm 644 ${srcdir}/rxd-bspwm-sakura/bspwm/sxhkdrc				${pkgdir}/usr/share/rxd-sakura/bspwm/sxhkdrc
}
