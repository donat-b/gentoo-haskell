# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Snap: A Haskell Web Framework (Core)"
HOMEPAGE="http://snapframework.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/attoparsec-0.9*
		>=dev-haskell/attoparsec-enumerator-0.2.0.3
		<dev-haskell/blaze-builder-0.4
		=dev-haskell/bytestring-mmap-0.2*
		dev-haskell/bytestring-nums
		=dev-haskell/case-insensitive-0.3*
		=dev-haskell/deepseq-1.1*
		=dev-haskell/dlist-0.5*
		=dev-haskell/enumerator-0.4*
		=dev-haskell/monadcatchio-transformers-0.2*
		=dev-haskell/mtl-2.0*
		=dev-haskell/text-0.11*
		dev-haskell/time
		=dev-haskell/transformers-0.2*
		=dev-haskell/unix-compat-0.2*
		<dev-haskell/vector-0.8
		dev-haskell/zlib
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@case-insensitive >= 0.2 && < 0.3@case-insensitive >= 0.2 \&\& < 0.4@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
