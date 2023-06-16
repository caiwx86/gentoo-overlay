# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit unpacker xdg

MY_PV="$(ver_cut 4)"

DESCRIPTION="wolai"
HOMEPAGE="https://www.wolai.com"

KEYWORDS="amd64"

SRC_URI="
	amd64? ( hhttps://cdn.wostatic.cn/dist/installers/wolai_1.2.7_amd64.deb?spm=wolai.home.0.0.1a99767bgEtGFI&file=${PN}_${PV}_amd64.deb
	)"

SLOT="0"
RESTRICT="strip mirror" # mirror as explained at bug #547372
IUSE=""

RDEPEND="
"
DEPEND=""
BDEPEND=""

S="${WORKDIR}"

src_install() {
}
