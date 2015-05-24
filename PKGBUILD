# Maintainer: Czipperz <czipperz@gmail.com>
pkgname=git-diff-git
pkgver=1.0
pkgrel=1
pkgdesc='Makes `git diff` usable and pretty'
arch=("any")
requires=("git")
url='https://github.com/czipperz/gd'

_gitname="gd"
_gitroot="git://github.com/czipperz/${_gitname}.git"

source=("$_gitroot")

package() {
	cd $srcdir/$_gitname
	install -Dm755 gd $pkgdir/usr/bin/gd
}
md5sums=('SKIP')
