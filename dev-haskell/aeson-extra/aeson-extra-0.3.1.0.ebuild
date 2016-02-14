# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Extra goodies for aeson"
HOMEPAGE="https://github.com/phadej/aeson-extra#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.7.0.6:=[profile?] <dev-haskell/aeson-0.12:=[profile?]
	>=dev-haskell/aeson-compat-0.3.0.0:=[profile?] <dev-haskell/aeson-compat-0.4:=[profile?]
	>=dev-haskell/base-compat-0.6.0:=[profile?] <dev-haskell/base-compat-0.10:=[profile?]
	>=dev-haskell/exceptions-0.8:=[profile?] <dev-haskell/exceptions-0.9:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/parsec-3.1.9:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/recursion-schemes-4.1.2:=[profile?] <dev-haskell/recursion-schemes-4.2:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/time-parsers-0.1.0.0:=[profile?] <dev-haskell/time-parsers-0.2:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-0.6:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-instances-0.3 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/tasty-0.10 <dev-haskell/tasty-0.12
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.10
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.9
		>=dev-haskell/these-0.6.2.0 <dev-haskell/these-0.7 )
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-aeson-0.11.patch
}
