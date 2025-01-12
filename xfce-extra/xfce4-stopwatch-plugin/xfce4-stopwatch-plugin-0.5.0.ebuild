# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit xdg

DESCRIPTION="This panel plugin keeps track of elapsed time."
HOMEPAGE="https://docs.xfce.org/panel-plugins/xfce4-stopwatch-plugin"
SRC_URI="https://archive.xfce.org/src/panel-plugins/${PN}/${PV%.*}/${P}.tar.bz2"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	x11-libs/libX11
	>=x11-libs/gtk+-3.22:3
	>=xfce-base/libxfce4ui-4.12:=
	>=xfce-base/libxfce4util-4.12:=
	>=xfce-base/xfce4-panel-4.12:="
DEPEND="${RDEPEND}"
BDEPEND="
	dev-util/intltool
	sys-devel/gettext
	virtual/pkgconfig"

src_install() {
	default
	find "${D}" -name '*.la' -delete || die
}
