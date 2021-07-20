# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit unpacker xdg

DESCRIPTION="WPS Office is an office productivity suite"
HOMEPAGE="http://www.wps.cn/product/wpslinux/ http://wps-community.org/"

KEYWORDS="amd64"
AP="/opt"
USR="/usr"
ETC="/etc"
BINS="/usr/bin/timeshift
      /usr/bin/timeshift-gtk
      /usr/bin/timeshift-launcher"

SRC_URI="
	amd64? ( https://github.com/teejee2008/${PN}/releases/download/v${PV}/${PN}_${PV}_amd64.deb 
	)"

SLOT="0"
IUSE=""

RDEPEND="
"
DEPEND="
       dev-libs/libgee
	   x11-libs/vte
	   acct-group/crontab"
BDEPEND=""

S="${WORKDIR}"
UP="/usr/share/applications"
src_install() {
    #insinto ${AP}
    #doins -r "${S}"/opt/*
	insinto ${ETC}
	doins -r "${S}"/${ETC}/*
    
	insinto ${USR}
	doins -r "${S}"/${USR}/*
    
	fperms 0755 ${BINS} 
	fperms +x ${BINS}
	#dosym ${AP}/${EN} /usr/bin/${PN}

}                                         
