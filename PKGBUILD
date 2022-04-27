# Maintainer: RifsxD

pkgname=rxd-bspwm-sakura
pkgrel=1
pkgver=1.25
pkgdesc="RifsxD's Bspwm Configurations for Arch"
url="https://github.com/RifsxD/RxD-BSPWM-Sakura-Theme"
arch=('any')
license=('GPL3')
makedepends=()
depends=(       'bspwm'
		'sxhkd' 'playerctl'
		'alacritty' 'thunar' 'geany' 'gpick'
		'pavucontrol'
		'rofi' 'dunst' 'xsel' 'xdotool'
		'mpd' 'mpc' 'jq' 'lxappearance'
		'maim' 'xclip' 'viewnior' 'feh'
		'xfce4-power-manager' 
		'xsettingsd'
		'xorg-xsetroot'
		'wmname'
)
conflicts=()
provides=("${pkgname}")
options=(!strip !emptydirs)
install="${pkgname}.install"

prepare() {
	cp -af ../files/. ${srcdir}
}

package() {
	mkdir -p ~/.config && mkdir -p ~/config/eww && mkdir -p ~/config/bspwm && mkdir -p ~/config/wallpapers && mkdir -p ~/config/alacritty && mkdir -p ~/config/networkmanager-dmenu && mkdir -p ~/config/geany

	# Copy bspwm specific config files
	install -Dm 755 ${srcdir}/.fehbg   			~/.fehbg
	
	cp -r ${srcdir}/networkmanager-dmenu	~/.config/
	cp -r ${srcdir}/eww	                    ~/.config/
	cp -r ${srcdir}/geany	                ~/.config/
	cp -r ${srcdir}/alacritty	            ~/.config/
	cp -r ${srcdir}/wallpapers	            ~/.config/

	# Copy window manager configs
	cp -r ${srcdir}/bspwm 			~/.config/
	sudo cp -r ${srcdir}/fonts/rxd			/usr/share/fonts/
	sudo cp -r ${srcdir}/fonts/noto-cjk		/usr/share/fonts/
	sudo cp -r ${srcdir}/fonts/noto     	/usr/share/fonts/
	chmod +x ~/.config/bspwm/bin/*
	chmod +x ~/.config/bspwm/rofi/bin/*
	chmod +x ~/.config/bspwm/rofi/bin/*
	chmod +x ~/.config/bspwm/polybar/extra-modules/*

	install -Dm 755 ${srcdir}/bspwm/bspwmrc   			~/.config/bspwm/bspwmrc
	install -Dm 644 ${srcdir}/bspwm/dunstrc   			~/.config/bspwm/dunstrc
	install -Dm 644 ${srcdir}/bspwm/picom.conf   		~/.config/bspwm/picom.conf

	# Copy keybindings config file
	install -Dm 644 ${srcdir}/bspwm/sxhkdrc				~/.config/bspwm/sxhkdrc
}
