# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="spring-tool-suite"
HOMEPAGE="https://www.getpostman.com/"
EN="eclipse"
SRC_URI="https://mirrors.tuna.tsinghua.edu.cn/${EN}/${EN}/downloads/drops4/S-${PV}M1-202001100905/${EN}-SDK-${PV}M1-linux-gtk-x86_64.tar.gz ->  ${P}.tar.gz"

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
	S=${WORKDIR}/${EN}/
}

src_install() {
    PP="/opt/apache/${PN}"
	insinto ${PP}
	doins -r ${S}/*
	dosym ${PP}/${EN} /usr/bin/${PN}
	fperms 0755 ${PP}/${EN}
	insinto /usr/share/applications/
	doins ${FILESDIR}/${EN}.desktop
}

pkg_postinst() {
	update-desktop-database
}
