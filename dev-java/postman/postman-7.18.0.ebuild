# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="postman"
HOMEPAGE="https://www.getpostman.com/"
SRC_URI="https://dl.pstmn.io/download/latest/linux64 -> Postman-linux-x64-${PV}.tar.gz"

LICENSE="EULA"
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
	insinto /opt/${PN}
	doins -r ${S}/*
	dosym /opt/${PN}/Postman /usr/bin/postman
	fperms 0755 /opt/${PN}/Postman
	fperms 0755 /opt/${PN}/app/_Postman
	insinto /usr/share/applications/
	doins ${FILESDIR}/postman.desktop
}

pkg_postinst() {
	update-desktop-database
}
