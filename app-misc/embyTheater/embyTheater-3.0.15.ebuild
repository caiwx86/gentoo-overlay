# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit unpacker xdg

DESCRIPTION="WPS Office is an office productivity suite"
HOMEPAGE="http://www.wps.cn/product/wpslinux/ http://wps-community.org/"

KEYWORDS="amd64"
E="emby-theater"
IM="/usr"

BINS="/usr/bin/emby-theater"
#      /opt/balenaEtcher/balena-etcher-electron.bin "

SRC_URI="
	amd64? ( https://github.com/MediaBrowser/${E}-electron/releases/download/${PV}/${E}_${PV}_amd64.deb 
	)"

SLOT="0"
IUSE=""

RDEPEND="
"
DEPEND=""
BDEPEND=""

S="${WORKDIR}"
UP="/usr/share/applications"
src_install() {
    insinto ${IM}
    doins -r "${S}"/${IM}/*
    fperms 0755 ${BINS} 
	fperms +x ${BINS}
	#dosym ${AP}/${EN} /usr/bin/${PN}

#	insinto ${USR}
#	doins -r "${S}"/${USR}/*
    
}                                         
