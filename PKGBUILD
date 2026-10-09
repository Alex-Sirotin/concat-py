# Maintainer: Alex Sirotin <alexander.sirotin@gmail.com>
pkgname=concat-py
pkgver=1.0.0
pkgrel=1
pkgdesc="Concatenate project files into one with masks"
arch=('any')
url="https://github.com/Alex-Sirotin/concat-py"
license=('MIT')
depends=('python')

# Вместо скачивания архива просто берем локальный файл скрипта
source=("concat-py")

package() {
    # Устанавливаем скрипт в /usr/bin/ под именем concat-py
    install -Dm755 "$srcdir/concat-py" "$pkgdir/usr/bin/concat-py"
}
sha256sums=('46e033c3d7b0c6efb73751bf5dc63720e245eb8ab2c6495bb6980e18249d89a8')
