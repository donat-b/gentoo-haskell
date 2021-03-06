# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Orphan instances for TH datatypes"
HOMEPAGE="http://hackage.haskell.org/package/th-orphans"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/generic-deriving-1.9:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/th-lift-0.7.1:=[profile?]
	dev-haskell/th-lift-instances:=[profile?]
	>=dev-haskell/th-reify-many-0.1:=[profile?] <dev-haskell/th-reify-many-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/hspec )
"
