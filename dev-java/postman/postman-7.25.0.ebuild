# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="postman"
HOMEPAGE="https://www.getpostman.com/"
SRC_URI="https://dl.pstmn.io/download/latest/linux64 -> Postman-linux-x64-${PV}.tar.gz"

AP="/opt/dev-java/${PN}"
#LICENSE="EULA"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="mirror"

DEPEND=""
RDEPEND="
	${DEPEND}"
BDEPEND=""

src_unpack() {
	if [ "${A}" != "" ]; then
		unpack ${A}
	fi
	S=${WORKDIR}/Postman/
}

src_install() {
	insinto ${AP}
	doins -r ${S}/*
	dosym ${AP}/Postman /usr/bin/postman
	fperms 0755 ${AP}/Postman
	fperms 0755 ${AP}/app/_Postman
	insinto /usr/share/applications/
	doins ${FILESDIR}/postman.desktop
}

pkg_postinst() {
	update-desktop-database
}
