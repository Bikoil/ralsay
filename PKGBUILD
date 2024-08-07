# Maintainer: Bikoil <devbikoilu@gmail.com>
pkgname=ralsei
pkgver=1.0
pkgrel=1
pkgdesc="A lua script like cowsay, but with ralsei!"
arch=('any')
url="http://github.com/Bikoil/ralsay"
license=('BSD-3-Clause')
source=("path/to/your/script.lua")
md5sums=('SKIP')  # Use 'SKIP' if you don't have an md5sums file

package() {
    install -Dm755 "$srcdir/ralsay.lua" "$pkgdir/usr/bin/ralsay"
}
