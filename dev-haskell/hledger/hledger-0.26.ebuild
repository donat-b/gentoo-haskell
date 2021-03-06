# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.6.9999
#hackport: flags: -double

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="The main command-line interface for the hledger accounting tool"
HOMEPAGE="http://hledger.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+curses +threaded"

RDEPEND=">=dev-haskell/base-compat-0.8.1:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	dev-haskell/csv:=[profile?]
	>=dev-haskell/haskeline-0.6:=[profile?] <=dev-haskell/haskeline-0.8:=[profile?]
	~dev-haskell/hledger-lib-0.26:=[profile?]
	dev-haskell/hunit:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/mtl-compat:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/old-time:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	>=dev-haskell/pretty-show-1.6.4:=[profile?]
	dev-haskell/regex-tdfa:=[profile?]
	>=dev-haskell/safe-0.2:=[profile?]
	>=dev-haskell/shakespeare-1.0:=[profile?] <dev-haskell/shakespeare-2.1:=[profile?]
	>=dev-haskell/shakespeare-text-1.0:=[profile?] <dev-haskell/shakespeare-text-1.2:=[profile?]
	>=dev-haskell/split-0.1:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/tabular-0.2:=[profile?] <dev-haskell/tabular-0.3:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-haskell/utf8-string-0.3.5:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/wizards-1.0:=[profile?] <dev-haskell/wizards-1.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	curses? ( dev-haskell/terminfo:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/hledger-lib
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/transformers )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag curses curses) \
		--flag=-double \
		$(cabal_flag threaded threaded)
}
