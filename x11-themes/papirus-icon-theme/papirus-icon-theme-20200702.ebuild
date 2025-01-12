# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit gnome2-utils xdg-utils

DESCRIPTION="icon theme for Linux"
HOMEPAGE="https://github.com/PapirusDevelopmentTeam/papirus-icon-theme"
SRC_URI="https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="*"

src_compile() { :; }

src_install() {
	insinto /usr/share/icons
	doins -r ePapirus Papirus{,-Dark,-Light}

}

pkg_preinst() { gnome2_icon_savelist; }
pkg_postinst() { gnome2_icon_cache_update; }
pkg_postrm() { xdg_icon_cache_update; }
