# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit unpacker xdg

DESCRIPTION="WPS Office is an office productivity suite"
HOMEPAGE="http://www.wps.cn/product/wpslinux/ http://wps-community.org/"

KEYWORDS="amd64"

EN="EdrawMax"
E="${EN}-9"

SRC_URI="
	amd64? ( https://www.edrawsoft.cn/2download/${P}-amd64-cn.deb
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
    fperms 0755  /opt/${E}/${EN}
	dosym /opt/${E}/${EN} /usr/bin/${PN}

	insinto ${AP}
	doins -r "${S}"/${AP}/*
    
}                                         
