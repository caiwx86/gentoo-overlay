# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit unpacker xdg

DESCRIPTION="WPS Office is an office productivity suite"
HOMEPAGE="http://www.wps.cn/product/wpslinux/ http://wps-community.org/"

KEYWORDS="amd64"
EN="MindMaster"
E="${EN}-8"
AP="/opt/${E}"

SRC_URI="
	amd64? ( https://www.edrawsoft.cn/2download/x86_64/${PN}_${PV}_cn.x86_64.deb
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
    insinto ${AP}
    doins -r "${S}"/opt/${E}/*
    fperms 0755  ${AP}/${EN}
	fperms +x  ${AP}/libexec/QtWebEngineProcess
	dosym ${AP}/${EN} /usr/bin/${PN}

	insinto ${UP}
	doins -r "${S}"/${UP}/*
    
}                                         
