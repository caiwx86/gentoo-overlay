# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit unpacker xdg

MY_PV="$(ver_cut 4)"

DESCRIPTION="WPS Office is an office productivity suite"
HOMEPAGE="http://cidian.youdao.com"

KEYWORDS="amd64"

SRC_URI="
	amd64? ( http://codown.youdao.com/cidian/linux/${P}-amd64.tar.gz
	)"

SLOT="0"
RESTRICT="strip mirror" # mirror as explained at bug #547372
LICENSE="WPS-EULA"
IUSE=""

# Deps got from this (listed in order):
# rpm -qpR wps-office-10.1.0.5707-1.a21.x86_64.rpm
# ldd /opt/kingsoft/wps-office/office6/wps
# ldd /opt/kingsoft/wps-office/office6/wpp
RDEPEND="
  dev-python/PyQt5
  dev-python/requests
  dev-python/python-xlib
  dev-python/pillow
  app-text/tesseract
"
DEPEND=""
BDEPEND=""

S="${WORKDIR}"

src_install() {
	insinto /opt/${PN}
	doins -r "${S}"/*
}
