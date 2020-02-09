# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="markdown editor"
HOMEPAGE="https://typora.io"
SRC_URI="https://typora.io/linux/Typora-linux-x64.tar.gz"

LICENSE="EULA"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="mirror"

DEPEND=""
RDEPEND="
	x11-libs/libXScrnSaver
	${DEPEND}"
BDEPEND=""

src_unpack() {
	if [ "${A}" != "" ]; then
		unpack ${A}
	fi
	S=${WORKDIR}/bin/Typora-linux-x64/
}

src_install() {
	insinto /opt/typora
	doins -r ${S}/*
	dosym /opt/typora/Typora /usr/bin/Typora
	fperms 0755 /opt/typora/Typora
	fperms 4755 /opt/typora/chrome-sandbox
	insinto /usr/share/applications/
	doins ${FILESDIR}/Typora.desktop
}

pkg_postinst() {
	update-desktop-database
}
