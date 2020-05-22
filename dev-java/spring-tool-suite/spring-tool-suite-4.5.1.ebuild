# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="spring-tool-suite"
HOMEPAGE="https://www.getpostman.com/"
EV="e4.14"

SRC_URI="http://download.springsource.com/release/STS4/${PV}.RELEASE/dist/${EV}/${PN}-4-${PV}.RELEASE-${EV}.0-linux.gtk.x86_64.tar.gz ->  ${P}.tar.gz"
#SRC_URI="https://github.com/spring-projects/sts4/archive/${PV}.RELEASE.tar.gz -> ${P}.tar.gz"
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
	S=${WORKDIR}/sts-${PV}.RELEASE/
}

src_install() {
	insinto /opt/${PN}
	doins -r ${S}/*
	dosym /opt/${PN}/SpringToolSuite4 /usr/bin/springToolSuite4
	fperms 0755 /opt/${PN}/SpringToolSuite4
	insinto /usr/share/applications/
	doins ${FILESDIR}/${PN}.desktop
}

pkg_postinst() {
	update-desktop-database
}
