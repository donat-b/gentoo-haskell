# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999
#hackport: flags: +release,-freestanding,-ci,-execonly

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Functional Programming Language with Dependent Types"
HOMEPAGE="http://www.idris-lang.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="curses ffi gmp"

RDEPEND=">=dev-haskell/annotated-wl-pprint-0.5.3:=[profile?]
	<dev-haskell/ansi-terminal-0.7:=[profile?]
	<dev-haskell/ansi-wl-pprint-0.7:=[profile?]
	<dev-haskell/base64-bytestring-1.1:=[profile?]
	>=dev-haskell/binary-0.7:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/blaze-html-0.6.1.3:=[profile?]
	>=dev-haskell/blaze-markup-0.5.2.1:=[profile?]
	<dev-haskell/cheapskate-0.2:=[profile?]
	>=dev-haskell/fingertree-0.1:=[profile?] <dev-haskell/fingertree-0.2:=[profile?]
	>=dev-haskell/haskeline-0.7:=[profile?] <dev-haskell/haskeline-0.8:=[profile?]
	>=dev-haskell/lens-4.1.1:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	<dev-haskell/network-2.7:=[profile?]
	>=dev-haskell/optparse-applicative-0.11:=[profile?] <dev-haskell/optparse-applicative-0.12:=[profile?]
	>=dev-haskell/parsers-0.9:=[profile?] <dev-haskell/parsers-0.13:=[profile?]
	dev-haskell/safe:=[profile?]
	<dev-haskell/split-0.3:=[profile?]
	<dev-haskell/text-1.3:=[profile?]
	<dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?]
	>=dev-haskell/trifecta-1.1:=[profile?] <dev-haskell/trifecta-1.6:=[profile?]
	>=dev-haskell/uniplate-1.6:=[profile?] <dev-haskell/uniplate-1.7:=[profile?]
	<dev-haskell/unordered-containers-0.3:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	<dev-haskell/vector-0.11:=[profile?]
	<dev-haskell/vector-binary-instances-0.3:=[profile?]
	<dev-haskell/xml-1.4:=[profile?]
	<dev-haskell/zlib-0.6:=[profile?]
	>=dev-lang/ghc-7.6.1:=
	curses? ( <dev-haskell/hscurses-1.5:=[profile?] )
	ffi? ( <dev-haskell/libffi-0.2:=[profile?] )
	gmp? ( <dev-haskell/libffi-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-7.10.patch

	cabal_chdeps \
		'utf8-string < 0.4' 'utf8-string' \
		'lens >= 4.1.1 && < 4.8' 'lens >= 4.1.1' \
		'blaze-markup >= 0.5.2.1 && < 0.6.3.0' 'blaze-markup' \
		'blaze-html >= 0.6.1.3 && < 0.8' 'blaze-html >= 0.6.1.3' \
		'annotated-wl-pprint >= 0.5.3 && < 0.6' 'annotated-wl-pprint >= 0.5.3' \
		'filepath < 1.4' 'filepath'

	# runs dist/build/idris directly and breaks sandboxing
	export LD_LIBRARY_PATH="${S}/dist/build${LD_LIBRARY_PATH+:}${LD_LIBRARY_PATH}"
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-ci \
		--flag=-execonly \
		$(cabal_flag curses curses) \
		$(cabal_flag ffi ffi) \
		--flag=-freestanding \
		$(cabal_flag gmp gmp) \
		--flag=release
}
