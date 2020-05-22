# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit unpacker xdg

DESCRIPTION="vnote"
HOMEPAGE="https://vnote.readthedocs.io/zh_CN/latest/"

KEYWORDS="amd64"

EN="vnote"

SRC_URI="
	amd64? ( https://github.com/tamlok/vnote/releases/download/v2.9/VNote-${PV}-x86_64.AppImage -> vnote.AppImage
	)"

SLOT="0"
IUSE=""

RDEPEND="
"
DEPEND=""
BDEPEND=""

S="${DISTDIR}"
AP="/usr/share/applications"
src_install() {
    insinto /opt/app-editors/${EN}/*
    doins -r ${S}
    fperms 0755  /opt/app-editors/${EN}/vnote.AppImage
	#dosym /opt/${E}/${EN} /usr/bin/${PN}

	#insinto ${AP}
	#doins -r "${S}"/${AP}/*
    
}                                         
