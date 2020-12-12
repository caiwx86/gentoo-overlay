# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit unpacker xdg

DESCRIPTION="WPS Office is an office productivity suite"
HOMEPAGE="http://www.wps.cn/product/wpslinux/ http://wps-community.org/"

KEYWORDS="amd64"
EN="nutstore"
E="${EN}/dist"
AP="/home/cwx/.${E}"
SRC_URI="
       amd64? ( https://www.jianguoyun.com/static/exe/installer/nutstore_linux_dist_x64.tar.gz
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
    doins -r "${S}"/*
	fperms +x -R ${AP}
}                                         
