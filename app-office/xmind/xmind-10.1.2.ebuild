# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit unpacker xdg

DESCRIPTION="WPS Office is an office productivity suite"
HOMEPAGE="http://www.wps.cn/product/wpslinux/ http://wps-community.org/"

KEYWORDS="amd64"

E="XMind"

SRC_URI="
	amd64? ( https://dl3.xmind.net/${E}-2020-for-Linux-amd-64bit-${PV}-202004142327.deb 
	)"

SLOT="0"
IUSE=""

RDEPEND="
"
DEPEND=""
BDEPEND=""

S="${WORKDIR}"
AP="/usr/share/applications"
src_install() {
    insinto /opt/${E}
    doins -r "${S}"/opt/${E}/*
    fperms 0755  /opt/${E}/${E}
	#dosym /opt/${E}/${E} /usr/bin/${EN}

	insinto ${AP}
	doins -r "${S}"/${AP}/*
    
}                                         
