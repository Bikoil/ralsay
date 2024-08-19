# Maintainer: Bikoil <devbikoilu@gmail.com>
pkgname=ralsay
pkgver=1.0
pkgrel=1
pkgdesc="A lua script like cowsay, but with ralsei!"
arch=('any')
url="http://github.com/Bikoil/ralsay"
license=('BSD-3-Clause')
source=("https://github.com/Bikoil/ralsay/archive/refs/tags/v1.1.tar.gz")
md5sums=('SKIP')  # Use 'SKIP' if you don't have an md5sums file
depends=('lua')

package() {
    install -Dm755 "$srcdir/ralsay.lua" "$pkgdir/usr/bin/ralsay"
}
