# Maintainer: Czipperz <czipperz@gmail.com>
pkgname=git-diff
pkgver=1.0
pkgrel=1
pkgdesc='Makes `git diff` usable and pretty'
arch=("any")
url='https://github.com/czipperz/gd'

_gitroot=git://github.com/czipperz/gd.git
_gitname=gd

source=('git://github.com/czipperz/gd.git')

package() {
	cd $srcdir/$_gitname
	install -Dm755 gd $pkgdir/usr/bin/gd
}
md5sums=('SKIP')
