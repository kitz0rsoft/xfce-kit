# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A comfortable command line plugin for the Xfce panel"
HOMEPAGE="https://goodies.xfce.org/projects/panel-plugins/xfce4-verve-plugin"
SRC_URI="https://archive.xfce.org/src/panel-plugins/${PN}/${PV%.*}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND=">=xfce-base/libxfce4ui-4.12:=
	>=xfce-base/xfce4-panel-4.12:=
	dev-libs/glib:2=
	>=dev-libs/libpcre-5:="
DEPEND="${RDEPEND}
	dev-util/intltool
	virtual/pkgconfig"

src_configure() {
	local myconf=(
		--libexecdir="${EPREFIX}"/usr/$(get_libdir)
	)
	econf "${myconf[@]}"
}

src_install() {
	default
	find "${D}" -name '*.la' -delete || die
}
