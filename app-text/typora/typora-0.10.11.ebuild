# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit unpacker xdg
DESCRIPTION="markdown editor"
HOMEPAGE="https://typora.io"
SRC_URI="http://typora.io/linux/typora_${PV}_amd64.deb"

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

S=${WORKDIR}
UE="/usr/share"
UA="${UE}/applications"
UD="${UE}/doc"
UI="${UE}/icons"

src_install() {
	insinto /opt/${PN}
	doins -r ${S}/usr/share/${PN}/*
	dosym /opt/${PN}/Typora /usr/bin/${PN}
	fperms 0755 /opt/${PN}/Typora
	fperms 4755 /opt/${PN}/chrome-sandbox
	#Applications
	insinto ${UA}
	doins ${S}/${UA}/typora.desktop
    #UI
	insinto ${UI}
	doins -r ${S}/${UI}/*
}

pkg_postinst() {
	update-desktop-database
}
