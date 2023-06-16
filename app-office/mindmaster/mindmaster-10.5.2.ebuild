# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit unpacker xdg

DESCRIPTION="Mindmaster"
HOMEPAGE="https://www.edrawsoft.cn/download/mindmaster/"

KEYWORDS="amd64"
EN="MindMaster"
E="${EN}-10"
AP="/opt/${E}"

SRC_URI="
	amd64? ( https://cc-download.edrawsoft.cn/${PN}_cn_full5420.deb
	)"

SLOT="0"
IUSE=""

RDEPEND="
    virtual/krb5
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
