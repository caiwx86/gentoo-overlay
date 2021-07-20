# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit unpacker xdg

DESCRIPTION="WPS Office is an office productivity suite"
HOMEPAGE="http://www.wps.cn/product/wpslinux/ http://wps-community.org/"

KEYWORDS="amd64"
EN="Motrix"
E="${EN}"
AP="/opt/${EN}"

SRC_URI="
	amd64? ( https://github.com/agalwood/Motrix/releases/download/v${PV}/Motrix_${PV}_amd64.deb 
	)"

SLOT="0"
IUSE=""

RDEPEND="
"
DEPEND=""
BDEPEND=""

S="${WORKDIR}"
USR="/usr"
UP="/usr/share/applications"
src_install() {
    insinto ${AP}
    doins -r "${S}"/opt/${E}/*
    fperms 0755  ${AP}/${PN}
	dosym ${AP}/${PN} /usr/bin/${PN}
    fperms +x ${AP}/resources/engine/aria2c
	#insinto ${UP}
	#doins -r "${S}"/${UP}/*
	insinto ${USR}
	doins -r "${S}"/${USR}/*
    
}                                         
