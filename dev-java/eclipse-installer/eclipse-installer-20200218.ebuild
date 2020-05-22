# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="spring-tool-suite"
HOMEPAGE="https://www.getpostman.com/"
RP="apache"
MP="https://mirrors.tuna.tsinghua.edu.cn/eclipse"
SRC_URI="$MP/oomph/epp/2019-12/R/eclipse-inst-linux64.tar.gz -> ${P}.tar.gz"

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
	S=${WORKDIR}
}

src_install() {
    PP="/opt/${RP}/${PN}"
	insinto ${PP}
	doins -r ${S}/${PN}/*
	dosym ${PP}/eclipse-inst /usr/bin/${PN}
	fperms 0755 ${PP}/eclipse-inst
	insinto /usr/share/applications/
	doins ${FILESDIR}/${PN}.desktop
}

pkg_postinst() {
	update-desktop-database
}
